//* This file is part of the MOOSE framework
//* https://www.mooseframework.org
//*
//* All rights reserved, see COPYRIGHT for full restrictions
//* https://github.com/idaholab/moose/blob/master/COPYRIGHT
//*
//* Licensed under LGPL 2.1, please see LICENSE for details
//* https://www.gnu.org/licenses/lgpl-2.1.html
#include "fccplasticityTestApp.h"
#include "fccplasticityApp.h"
#include "Moose.h"
#include "AppFactory.h"
#include "MooseSyntax.h"

InputParameters
fccplasticityTestApp::validParams()
{
  InputParameters params = fccplasticityApp::validParams();
  params.set<bool>("use_legacy_material_output") = false;
  params.set<bool>("use_legacy_initial_residual_evaluation_behavior") = false;
  return params;
}

fccplasticityTestApp::fccplasticityTestApp(InputParameters parameters) : MooseApp(parameters)
{
  fccplasticityTestApp::registerAll(
      _factory, _action_factory, _syntax, getParam<bool>("allow_test_objects"));
}

fccplasticityTestApp::~fccplasticityTestApp() {}

void
fccplasticityTestApp::registerAll(Factory & f, ActionFactory & af, Syntax & s, bool use_test_objs)
{
  fccplasticityApp::registerAll(f, af, s);
  if (use_test_objs)
  {
    Registry::registerObjectsTo(f, {"fccplasticityTestApp"});
    Registry::registerActionsTo(af, {"fccplasticityTestApp"});
  }
}

void
fccplasticityTestApp::registerApps()
{
  registerApp(fccplasticityApp);
  registerApp(fccplasticityTestApp);
}

/***************************************************************************************************
 *********************** Dynamic Library Entry Points - DO NOT MODIFY ******************************
 **************************************************************************************************/
// External entry point for dynamic application loading
extern "C" void
fccplasticityTestApp__registerAll(Factory & f, ActionFactory & af, Syntax & s)
{
  fccplasticityTestApp::registerAll(f, af, s);
}
extern "C" void
fccplasticityTestApp__registerApps()
{
  fccplasticityTestApp::registerApps();
}
