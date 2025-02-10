#include "fccplasticityApp.h"
#include "Moose.h"
#include "AppFactory.h"
#include "ModulesApp.h"
#include "MooseSyntax.h"

InputParameters
fccplasticityApp::validParams()
{
  InputParameters params = MooseApp::validParams();
  params.set<bool>("use_legacy_material_output") = false;
  params.set<bool>("use_legacy_initial_residual_evaluation_behavior") = false;
  return params;
}

fccplasticityApp::fccplasticityApp(InputParameters parameters) : MooseApp(parameters)
{
  fccplasticityApp::registerAll(_factory, _action_factory, _syntax);
}

fccplasticityApp::~fccplasticityApp() {}

void
fccplasticityApp::registerAll(Factory & f, ActionFactory & af, Syntax & syntax)
{
  ModulesApp::registerAllObjects<fccplasticityApp>(f, af, syntax);
  Registry::registerObjectsTo(f, {"fccplasticityApp"});
  Registry::registerActionsTo(af, {"fccplasticityApp"});

  /* register custom execute flags, action syntax, etc. here */
}

void
fccplasticityApp::registerApps()
{
  registerApp(fccplasticityApp);
}

/***************************************************************************************************
 *********************** Dynamic Library Entry Points - DO NOT MODIFY ******************************
 **************************************************************************************************/
extern "C" void
fccplasticityApp__registerAll(Factory & f, ActionFactory & af, Syntax & s)
{
  fccplasticityApp::registerAll(f, af, s);
}
extern "C" void
fccplasticityApp__registerApps()
{
  fccplasticityApp::registerApps();
}
