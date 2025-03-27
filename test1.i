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
    xmax = 0.003
    ymax = 0.003
    zmax = 0.003
    elem_type = HEX8
  []
[]

[AuxVariables]
  [fp_yy]
    order = CONSTANT
    family = MONOMIAL
  []
  [stress_vm]
    order = CONSTANT
    family = MONOMIAL
  []
  [stress_yy]
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
[stress_vm]
type = RankTwoScalarAux
rank_two_tensor = stress
variable = stress_vm
scalar_type = VonMisesStress
execute_on = timestep_end
[]
  [fp_yy]
    type = RankTwoAux
    variable = fp_yy
    rank_two_tensor = plastic_deformation_gradient
    index_j = 1
    index_i = 1
    execute_on = timestep_end
  []

  [stress_yy]
  type = RankTwoAux
  rank_two_tensor = stress
  variable = stress_yy
  index_j = 1
  index_i = 1
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
    function = '(3e-1)*t'
  []
[]

[Materials]
  [elasticity_tensor]
    type = ComputeElasticityTensorCP
    C_ijkl = '2.36e5 1.34e5 1.34e5 2.36e5 1.34e5 2.36e5 1.19e5 1.19e5 1.19e5' 
    fill_method = symmetric9
    euler_angle_variables = '80.0 110.0 40.0'
  []
  [stress]
    type = ComputeMultipleCrystalPlasticityStress
    crystal_plasticity_models = 'slip_xtalpl'
    tan_mod_type = exact
  []
  [slip_xtalpl]
    type = CrystalPlasticityUpdate
    loop_num = 500
    number_slip_systems = 12
    slip_sys_file_name = input_slip_sys.txt
    plane_file_name = plane.txt
  []
[]

[Postprocessors]
[stress_vm]
   type = ElementAverageValue
   variable = stress_vm
[]
  [fp_yy]
    type = ElementExtremeValue
    variable = fp_yy
  []
  [stress_yy]
    type = ElementAverageValue
    variable = stress_yy
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
  nl_abs_tol = 1e-9
  nl_rel_tol = 1e-9
  nl_abs_step_tol = 1e-8

  dt = 1e-5
  dtmin = 1e-10
  end_time = 1e-3
[]

[Outputs]
  execute_on = 'timestep_end'
  exodus = true     
  csv = true
  perf_graph = true
[]
