[GlobalParams]
  displacements = 'disp_x disp_y disp_z'
[]

[Mesh]
  [cube]
    type = GeneratedMeshGenerator
    dim = 3
    nx = 10
    ny = 10
    nz = 10
    xmin = 0.0
    ymin = 0.0
    zmin = 0.0
    xmax = 0.000003
    ymax = 0.000003
    zmax = 0.000003
    elem_type = HEX8
  []
[]

[AuxVariables]
  [fp_yy]
    order = CONSTANT
    family = MONOMIAL
  []
  [total_twin_volume_fraction]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_0]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_1]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_2]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_3]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_4]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_5]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_6]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_7]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_8]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_9]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_10]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_11]
    order = CONSTANT
    family = MONOMIAL
  []
  [disloc_density_0]
    order = CONSTANT
    family = MONOMIAL
  []
  [disloc_density_1]
    order = CONSTANT
    family = MONOMIAL
  []
  [disloc_density_2]
    order = CONSTANT
    family = MONOMIAL
  []
  [disloc_density_3]
    order = CONSTANT
    family = MONOMIAL
  []
  [disloc_density_4]
    order = CONSTANT
    family = MONOMIAL
  []
  [disloc_density_5]
    order = CONSTANT
    family = MONOMIAL
  []
  [disloc_density_6]
    order = CONSTANT
    family = MONOMIAL
  []
  [disloc_density_7]
    order = CONSTANT
    family = MONOMIAL
  []
  [disloc_density_8]
    order = CONSTANT
    family = MONOMIAL
  []
  [disloc_density_9]
    order = CONSTANT
    family = MONOMIAL
  []
  [disloc_density_10]
    order = CONSTANT
    family = MONOMIAL
  []
  [disloc_density_11]
    order = CONSTANT
    family = MONOMIAL
  []
[]

[Physics/SolidMechanics/QuasiStatic/all]
  strain = FINITE
  add_variables = true
[]

[AuxKernels]
  [fp_yy]
    type = RankTwoAux
    variable = fp_yy
    rank_two_tensor = plastic_deformation_gradient
    index_j = 2
    index_i = 2
    execute_on = timestep_end
  []
  [slip_increment_0]
   type = MaterialStdVectorAux
   variable = slip_increment_0
   property = slip_increment
   index = 0
   execute_on = timestep_end
  []
  [slip_increment_1]
   type = MaterialStdVectorAux
   variable = slip_increment_1
   property = slip_increment
   index = 1
   execute_on = timestep_end
  []
  [slip_increment_2]
   type = MaterialStdVectorAux
   variable = slip_increment_2
   property = slip_increment
   index = 2
   execute_on = timestep_end
  []
  [slip_increment_3]
   type = MaterialStdVectorAux
   variable = slip_increment_3
   property = slip_increment
   index = 3
   execute_on = timestep_end
  []
  [slip_increment_4]
   type = MaterialStdVectorAux
   variable = slip_increment_4
   property = slip_increment
   index = 4
   execute_on = timestep_end
  []
  [slip_increment_5]
   type = MaterialStdVectorAux
   variable = slip_increment_5
   property = slip_increment
   index = 5
   execute_on = timestep_end
  []
  [slip_increment_6]
   type = MaterialStdVectorAux
   variable = slip_increment_6
   property = slip_increment
   index = 6
   execute_on = timestep_end
  []
  [slip_increment_7]
   type = MaterialStdVectorAux
   variable = slip_increment_7
   property = slip_increment
   index = 7
   execute_on = timestep_end
  []
  [slip_increment_8]
   type = MaterialStdVectorAux
   variable = slip_increment_8
   property = slip_increment
   index = 8
   execute_on = timestep_end
  []
  [slip_increment_9]
   type = MaterialStdVectorAux
   variable = slip_increment_9
   property = slip_increment
   index = 9
   execute_on = timestep_end
  []
  [slip_increment_10]
   type = MaterialStdVectorAux
   variable = slip_increment_10
   property = slip_increment
   index = 10
   execute_on = timestep_end
  []
  [slip_increment_11]
   type = MaterialStdVectorAux
   variable = slip_increment_11
   property = slip_increment
   index = 11
   execute_on = timestep_end
  []
  [disloc_density_0]
   type = MaterialStdVectorAux
   variable = disloc_density_0
   property = disloc_density
   index = 0
   execute_on = timestep_end
  []
  [disloc_density_1]
   type = MaterialStdVectorAux
   variable = disloc_density_1
   property = disloc_density
   index = 1
   execute_on = timestep_end
  []
  [disloc_density_2]
   type = MaterialStdVectorAux
   variable = disloc_density_2
   property = disloc_density
   index = 2
   execute_on = timestep_end
  []
  [disloc_density_3]
   type = MaterialStdVectorAux
   variable = disloc_density_3
   property = disloc_density
   index = 3
   execute_on = timestep_end
  []
  [disloc_density_4]
   type = MaterialStdVectorAux
   variable = disloc_density_4
   property = disloc_density
   index = 4
   execute_on = timestep_end
  []
  [disloc_density_5]
   type = MaterialStdVectorAux
   variable = disloc_density_5
   property = disloc_density
   index = 5
   execute_on = timestep_end
  []
  [disloc_density_6]
   type = MaterialStdVectorAux
   variable = disloc_density_6
   property = disloc_density
   index = 6
   execute_on = timestep_end
  []
  [disloc_density_7]
   type = MaterialStdVectorAux
   variable = disloc_density_7
   property = disloc_density
   index = 7
   execute_on = timestep_end
  []
  [disloc_density_8]
   type = MaterialStdVectorAux
   variable = disloc_density_8
   property = disloc_density
   index = 8
   execute_on = timestep_end
  []
  [disloc_density_9]
   type = MaterialStdVectorAux
   variable = disloc_density_9
   property = disloc_density
   index = 9
   execute_on = timestep_end
  []
  [disloc_density_10]
   type = MaterialStdVectorAux
   variable = disloc_density_10
   property = disloc_density
   index = 10
   execute_on = timestep_end
  []
  [disloc_density_11]
   type = MaterialStdVectorAux
   variable = disloc_density_11
   property = disloc_density
   index = 11
   execute_on = timestep_end
  []
[]

[BCs]
  [fix_y]
    type = DirichletBC
    variable = disp_y
    preset = true
    boundary = 'bottom'
    value = 0
  []
  [tdisp]
    type = FunctionDirichletBC
    variable = disp_y
    boundary = top
    function = '(3e-6)*t'
  []
[]

[Materials]
  [elasticity_tensor]
    type = ComputeElasticityTensorCP
    C_ijkl = '3.01e11 1.29e11 1.29e11 3.01e11 1.29e11 3.01e11 8.6e10 8.6e10 8.6e10' 
    fill_method = symmetric9
  []
  [stress]
    type = ComputeMultipleCrystalPlasticityStress
    crystal_plasticity_models = 'slip_xtalpl'
    tan_mod_type = exact
  []
  [slip_xtalpl]
    type = CrystalPlasticityUpdate
    number_slip_systems = 12
    slip_sys_file_name = input_slip_sys.txt
    
  []
[]

[Postprocessors]
  [fp_yy]
    type = ElementExtremeValue
    variable = fp_yy
  []
  [total_twin_volume_fraction]
    type = ElementAverageValue
    variable = total_twin_volume_fraction
  []
  [slip_increment_0]
    type = ElementExtremeValue
    variable = slip_increment_0
    value_type = max
  []
  [slip_increment_1]
    type = ElementExtremeValue
    variable = slip_increment_1
    value_type = max
  []
  [slip_increment_2]
    type = ElementExtremeValue
    variable = slip_increment_2
    value_type = max
  []
  [slip_increment_3]
    type = ElementExtremeValue
    variable = slip_increment_3
    value_type = max
  []
  [slip_increment_4]
    type = ElementExtremeValue
    variable = slip_increment_4
    value_type = max
  []
  [slip_increment_5]
    type = ElementExtremeValue
    variable = slip_increment_5
    value_type = max
  []
  [slip_increment_6]
    type = ElementExtremeValue
    variable = slip_increment_6
    value_type = max
  []
  [slip_increment_7]
    type = ElementExtremeValue
    variable = slip_increment_7
    value_type = max
  []
  [slip_increment_8]
    type = ElementExtremeValue
    variable = slip_increment_8
    value_type = max
  []
  [slip_increment_9]
    type = ElementExtremeValue
    variable = slip_increment_9
    value_type = max
  []
  [slip_increment_10]
    type = ElementExtremeValue
    variable = slip_increment_10
    value_type = max
  []
  [slip_increment_11]
    type = ElementExtremeValue
    variable = slip_increment_11
    value_type = max
  []
  [disp_y]
    type = ElementExtremeValue
    variable = disp_y
    value_type = max
  []
  [disloc_density_0]
    type = ElementExtremeValue
    variable = disloc_density_0
    value_type = max
  []
  [disloc_density_1]
    type = ElementExtremeValue
    variable = disloc_density_1
    value_type = max
  []
  [disloc_density_2]
    type = ElementExtremeValue
    variable = disloc_density_2
    value_type = max
  []
  [disloc_density_3]
    type = ElementExtremeValue
    variable = disloc_density_3
    value_type = max
  []
  [disloc_density_4]
    type = ElementExtremeValue
    variable = disloc_density_4
    value_type = max
  []
  [disloc_density_5]
    type = ElementExtremeValue
    variable = disloc_density_5
    value_type = max
  []
  [disloc_density_6]
    type = ElementExtremeValue
    variable = disloc_density_6
    value_type = max
  []
  [disloc_density_7]
    type = ElementExtremeValue
    variable = disloc_density_7
    value_type = max
  []
  [disloc_density_8]
    type = ElementExtremeValue
    variable = disloc_density_8
    value_type = max
  []
  [disloc_density_9]
    type = ElementExtremeValue
    variable = disloc_density_9
    value_type = max
  []
  [disloc_density_10]
    type = ElementExtremeValue
    variable = disloc_density_10
    value_type = max
  []
  [disloc_density_11]
    type = ElementExtremeValue
    variable = disloc_density_11
    value_type = max
  []
[]

[Preconditioning]
  [smp]
    type = SMP
    full = true
  []
[]

[Executioner]
  type = Transient
  solve_type = 'PJFNK'

  petsc_options_iname = '-pc_type -pc_asm_overlap -sub_pc_type -ksp_type -ksp_gmres_restart'
  petsc_options_value = ' asm      2              lu            gmres     200'
  nl_abs_tol = 1e2
  nl_rel_tol = 1e-3
  nl_abs_step_tol = 1e2

  dt = 1e-7
  dtmin = 1e-15
  num_steps = 1000
[]

[Outputs]
  execute_on = 'timestep_end'
  exodus = true     
  csv = true
  perf_graph = true
[]
