//* This file is part of the MOOSE framework
//* https://www.mooseframework.org
//*
//* All rights reserved, see COPYRIGHT for full restrictions
//* https://github.com/idaholab/moose/blob/master/COPYRIGHT
//*
//* Licensed under LGPL 2.1, please see LICENSE for details
//* https://www.gnu.org/licenses/lgpl-2.1.html

#include "CrystalPlasticityUpdate.h"
#include "libmesh/int_range.h"
#include <cmath>

registerMooseObject("SolidMechanicsApp", CrystalPlasticityUpdate);

InputParameters
CrystalPlasticityUpdate::validParams()
{
  InputParameters params = CrystalPlasticityStressUpdateBase::validParams();
  params.addClassDescription("Kalidindi version of homogeneous crystal plasticity.");
  params.addParam<Real>("T", 295.0, "temperature");
  params.addParam<Real>("T_critical", 400.0, "critical temperature");
  params.addParam<Real>("r", 1.0, "Latent hardening coefficient");
  params.addParam<Real>("h", 541.5, "hardening constants");
  params.addParam<Real>("t_sat", 109.8, "saturated slip system strength");
  params.addParam<Real>("gss_a", 2.5, "coefficient for hardening");
  params.addParam<Real>("ao", 0.001, "slip rate coefficient");
  params.addParam<Real>("xm", 0.1, "exponent for slip rate");
  params.addParam<Real>("gss_initial", 60.8, "initial lattice friction strength of the material");
  params.addParam<Real>("disloc_density0",std::pow(10.0,12.0),"density 0");
  params.addParam<Real>("k1",450.0,"k1");
  params.addParam<Real>("k20",14.0,"k20");
  params.addParam<Real>("gamma0",3.0*std::pow(10.0,4.0),"gamma0");
  params.addParam<MaterialPropertyName>(
      "total_twin_volume_fraction",
      "Total twin volume fraction, if twinning is considered in the simulation");

  return params;
}

CrystalPlasticityUpdate::CrystalPlasticityUpdate(
    const InputParameters & parameters)
  : CrystalPlasticityStressUpdateBase(parameters),
    // Constitutive values
    _T(getParam<Real>("T")),
    _T_critical(getParam<Real>("T_critical")),
    _r(getParam<Real>("r")),
    _h(getParam<Real>("h")),
    _tau_sat(getParam<Real>("t_sat")),
    _gss_a(getParam<Real>("gss_a")),
    _ao(getParam<Real>("ao")),
    _xm(getParam<Real>("xm")),
    _gss_initial(getParam<Real>("gss_initial")),
    _disloc_density0(getParam<Real>("disloc_density0")),
    _k1(getParam<Real>("k1")),
    _k20(getParam<Real>("k20")),
    _gamma0(getParam<Real>("gamma0")),
    // resize vectors used in the consititutive slip hardening
    _hb(_number_slip_systems, 0.0),
    _slip_resistance_increment(_number_slip_systems, 0.0),
    _disloc_h(declareProperty<std::vector<Real>>("disloc_h")),
    _disloc_h_increment(_number_slip_systems, 0.0),
    _disloc_density(declareProperty<std::vector<Real>>("disloc_density")),
    _slip_increment_old(getMaterialPropertyOld<std::vector<Real>>("slip_increment_old")),
    _disloc_h_old(getMaterialPropertyOld<std::vector<Real>>("disloc_h_old")),
    // resize local caching vectors used for substepping
    _previous_substep_slip_resistance(_number_slip_systems, 0.0),
    _previous_substep_disloc_h(_number_slip_systems, 0.0),
    _slip_resistance_before_update(_number_slip_systems, 0.0),
    _disloc_h_before_update(_number_slip_systems, 0.0),
    // Twinning contributions, if used
    _include_twinning_in_Lp(parameters.isParamValid("total_twin_volume_fraction")),
    _twin_volume_fraction_total(_include_twinning_in_Lp
                                    ? &getMaterialPropertyOld<Real>("total_twin_volume_fraction")
                                    : nullptr)
{
  _theta=0.5*(1.0+std::tanh(_T/_T_critical));
}

void
CrystalPlasticityUpdate::initQpStatefulProperties()
{
  CrystalPlasticityStressUpdateBase::initQpStatefulProperties();
  for (const auto i : make_range(_number_slip_systems))
  {
    _slip_resistance[_qp][i] = _gss_initial;
    _slip_increment[_qp][i] = 0.0;
    _disloc_h[_qp][i] = 1.0;
    _disloc_density[_qp][i] = _disloc_density0;
  }
}

void
CrystalPlasticityUpdate::setInitialConstitutiveVariableValues()
{
  // Would also set old dislocation densities here if included in this model
  _slip_resistance[_qp] = _slip_resistance_old[_qp];
  _previous_substep_slip_resistance = _slip_resistance_old[_qp];
  _previous_substep_disloc_h = _disloc_h_old[_qp];
}

void
CrystalPlasticityUpdate::setSubstepConstitutiveVariableValues()
{
  // Would also set substepped dislocation densities here if included in this model
  _slip_resistance[_qp] = _previous_substep_slip_resistance;
  _disloc_h[_qp] = _previous_substep_disloc_h;
}

bool
CrystalPlasticityUpdate::calculateSlipRate()
{
  for (const auto i : make_range(_number_slip_systems))
  {
    _slip_increment[_qp][i] =
        _ao * std::pow(std::abs(_tau[_qp][i] / _slip_resistance[_qp][i]), 1.0 / _xm);
    if (_tau[_qp][i] < 0.0)
      _slip_increment[_qp][i] *= -1.0;

    if (std::abs(_slip_increment[_qp][i]) * _substep_dt > _slip_incr_tol)
    {
      if (_print_convergence_message)
        mooseWarning("Maximum allowable slip increment exceeded ",
                     std::abs(_slip_increment[_qp][i]) * _substep_dt);

      return false;
    }
  }
  return true;
}

void
CrystalPlasticityUpdate::calculateEquivalentSlipIncrement(
    RankTwoTensor & equivalent_slip_increment)
{
  // if (_include_twinning_in_Lp)
  // {
  //   for (const auto i : make_range(_number_slip_systems))
  //     equivalent_slip_increment += (1.0 - (*_twin_volume_fraction_total)[_qp]) *
  //                                  _flow_direction[_qp][i] * _slip_increment[_qp][i] * _substep_dt;
  // }
  // else // if no twinning volume fraction material property supplied, use base class
  //   CrystalPlasticityStressUpdateBase::calculateEquivalentSlipIncrement(equivalent_slip_increment);
  CrystalPlasticityStressUpdateBase::calculateEquivalentSlipIncrement(equivalent_slip_increment);
}

void
CrystalPlasticityUpdate::calculateConstitutiveSlipDerivative(
    std::vector<Real> & dslip_dtau)
{
  for (const auto i : make_range(_number_slip_systems))
  {
    if (MooseUtils::absoluteFuzzyEqual(_tau[_qp][i], 0.0))
      dslip_dtau[i] = 0.0;
    else
      dslip_dtau[i] = _ao / _xm *
                      std::pow(std::abs(_tau[_qp][i] / _slip_resistance[_qp][i]), 1.0 / _xm - 1.0) /
                      _slip_resistance[_qp][i];
  }
}

bool
CrystalPlasticityUpdate::areConstitutiveStateVariablesConverged()
{
  return isConstitutiveStateVariableConverged(_slip_resistance[_qp],
                                              _slip_resistance_before_update,
                                              _previous_substep_slip_resistance,
                                              _resistance_tol);
}

void
CrystalPlasticityUpdate::updateSubstepConstitutiveVariableValues()
{
  // Would also set substepped dislocation densities here if included in this model
  _previous_substep_slip_resistance = _slip_resistance[_qp];
  _previous_substep_disloc_h = _disloc_h_old[_qp];
}

void
CrystalPlasticityUpdate::cacheStateVariablesBeforeUpdate()
{
  _slip_resistance_before_update = _slip_resistance[_qp];
  _disloc_h_before_update = _disloc_h[_qp];
}

void
CrystalPlasticityUpdate::calculateStateVariableEvolutionRateComponent()
{
  for (const auto i : make_range(_number_slip_systems))
  {
    if (_slip_increment_old[_qp][i]!=0.0){
    Real _k2;
    _k2=_k20*(_gamma0/std::abs(_slip_increment_old[_qp][i]));
    _disloc_h_increment[i]=std::abs(_slip_increment_old[_qp][i])*(_k1*std::pow(_disloc_h_before_update[i],0.5)-_k2*_disloc_h_before_update[i]);
    _disloc_h[_qp][i]+=_disloc_h_increment[i]*_substep_dt;
    _disloc_density[_qp][i] = _disloc_h[_qp][i]*_disloc_density0;
    }
  }
  for (const auto i : make_range(_number_slip_systems))
  {
    // Clear out increment from the previous iteration
    _slip_resistance_increment[i] = 0.0;

    _hb[i] = _h * std::pow(std::abs(1.0 - _slip_resistance[_qp][i] / _tau_sat), _gss_a);
    const Real hsign = 1.0 - _slip_resistance[_qp][i] / _tau_sat;
    if (hsign < 0.0)
      _hb[i] *= -1.0;
  }

  for (const auto i : make_range(_number_slip_systems))
  {
    for (const auto j : make_range(_number_slip_systems))
    {
      unsigned int iplane, jplane;
      iplane = i / 3;
      jplane = j / 3;

      if (iplane == jplane) // self vs. latent hardening
        _slip_resistance_increment[i] +=
            std::abs(_slip_increment[_qp][j]) * _hb[j]; // q_{ab} = 1.0 for self hardening
      else
        _slip_resistance_increment[i] +=
            std::abs(_slip_increment[_qp][j]) * _r * _hb[j]; // latent hardenign
    }
  }
}

bool
CrystalPlasticityUpdate::updateStateVariables()
{
  // Now perform the check to see if the slip system should be updated
  for (const auto i : make_range(_number_slip_systems))
  {
    _slip_resistance_increment[i] *= _substep_dt;
    _disloc_h[_qp][i] += _disloc_h_increment[i]*_substep_dt;
    _disloc_density[_qp][i] = _disloc_h[_qp][i]*_disloc_density0;
    if (_previous_substep_slip_resistance[i] < _zero_tol && _slip_resistance_increment[i] < 0.0)
      _slip_resistance[_qp][i] = _previous_substep_slip_resistance[i];
    else
      _slip_resistance[_qp][i] =
          _previous_substep_slip_resistance[i] + _slip_resistance_increment[i];

    if (_slip_resistance[_qp][i] < 0.0)
      return false;
  }
  return true;
}
