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
  [slip_increment_12]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_13]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_14]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_15]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_16]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_17]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_18]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_19]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_20]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_21]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_22]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_23]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_24]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_25]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_26]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_27]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_28]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_29]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_30]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_31]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_32]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_33]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_34]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_35]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_36]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_37]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_38]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_39]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_40]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_41]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_42]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_43]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_44]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_45]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_46]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_47]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_0]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_1]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_2]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_3]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_4]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_5]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_6]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_7]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_8]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_9]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_10]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_11]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_12]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_13]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_14]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_15]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_16]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_17]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_18]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_19]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_20]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_21]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_22]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_23]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_24]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_25]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_26]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_27]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_28]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_29]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_30]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_31]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_32]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_33]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_34]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_35]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_36]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_37]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_38]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_39]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_40]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_41]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_42]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_43]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_44]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_45]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_46]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_resistance_47]
    order = CONSTANT
    family = MONOMIAL
  []
  [disloc_density]
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
  [slip_increment_12]
   type = MaterialStdVectorAux
   variable = slip_increment_12
   property = slip_increment
   index = 12
   execute_on = timestep_end
  []
  [slip_increment_13]
   type = MaterialStdVectorAux
   variable = slip_increment_13
   property = slip_increment
   index = 13
   execute_on = timestep_end
  []
  [slip_increment_14]
   type = MaterialStdVectorAux
   variable = slip_increment_14
   property = slip_increment
   index = 14
   execute_on = timestep_end
  []
  [slip_increment_15]
   type = MaterialStdVectorAux
   variable = slip_increment_15
   property = slip_increment
   index = 15
   execute_on = timestep_end
  []
  [slip_increment_16]
   type = MaterialStdVectorAux
   variable = slip_increment_16
   property = slip_increment
   index = 16
   execute_on = timestep_end
  []
  [slip_increment_17]
   type = MaterialStdVectorAux
   variable = slip_increment_17
   property = slip_increment
   index = 17
   execute_on = timestep_end
  []
  [slip_increment_18]
   type = MaterialStdVectorAux
   variable = slip_increment_18
   property = slip_increment
   index = 18
   execute_on = timestep_end
  []
  [slip_increment_19]
   type = MaterialStdVectorAux
   variable = slip_increment_19
   property = slip_increment
   index = 19
   execute_on = timestep_end
  []
  [slip_increment_20]
   type = MaterialStdVectorAux
   variable = slip_increment_20
   property = slip_increment
   index = 20
   execute_on = timestep_end
  []
  [slip_increment_21]
   type = MaterialStdVectorAux
   variable = slip_increment_21
   property = slip_increment
   index = 21
   execute_on = timestep_end
  []
  [slip_increment_22]
   type = MaterialStdVectorAux
   variable = slip_increment_22
   property = slip_increment
   index = 22
   execute_on = timestep_end
  []
  [slip_increment_23]
   type = MaterialStdVectorAux
   variable = slip_increment_23
   property = slip_increment
   index = 23
   execute_on = timestep_end
  []
  [slip_increment_24]
   type = MaterialStdVectorAux
   variable = slip_increment_24
   property = slip_increment
   index = 24
   execute_on = timestep_end
  []
  [slip_increment_25]
   type = MaterialStdVectorAux
   variable = slip_increment_25
   property = slip_increment
   index = 25
   execute_on = timestep_end
  []
  [slip_increment_26]
   type = MaterialStdVectorAux
   variable = slip_increment_26
   property = slip_increment
   index = 26
   execute_on = timestep_end
  []
  [slip_increment_27]
   type = MaterialStdVectorAux
   variable = slip_increment_27
   property = slip_increment
   index = 27
   execute_on = timestep_end
  []
  [slip_increment_28]
   type = MaterialStdVectorAux
   variable = slip_increment_28
   property = slip_increment
   index = 28
   execute_on = timestep_end
  []
  [slip_increment_29]
   type = MaterialStdVectorAux
   variable = slip_increment_29
   property = slip_increment
   index = 29
   execute_on = timestep_end
  []
  [slip_increment_30]
   type = MaterialStdVectorAux
   variable = slip_increment_30
   property = slip_increment
   index = 30
   execute_on = timestep_end
  []
  [slip_increment_31]
   type = MaterialStdVectorAux
   variable = slip_increment_31
   property = slip_increment
   index = 31
   execute_on = timestep_end
  []
  [slip_increment_32]
   type = MaterialStdVectorAux
   variable = slip_increment_32
   property = slip_increment
   index = 32
   execute_on = timestep_end
  []
  [slip_increment_33]
   type = MaterialStdVectorAux
   variable = slip_increment_33
   property = slip_increment
   index = 33
   execute_on = timestep_end
  []
  [slip_increment_34]
   type = MaterialStdVectorAux
   variable = slip_increment_34
   property = slip_increment
   index = 34
   execute_on = timestep_end
  []
  [slip_increment_35]
   type = MaterialStdVectorAux
   variable = slip_increment_35
   property = slip_increment
   index = 35
   execute_on = timestep_end
  []
  [slip_increment_36]
   type = MaterialStdVectorAux
   variable = slip_increment_36
   property = slip_increment
   index = 36
   execute_on = timestep_end
  []
  [slip_increment_37]
   type = MaterialStdVectorAux
   variable = slip_increment_37
   property = slip_increment
   index = 37
   execute_on = timestep_end
  []
  [slip_increment_38]
   type = MaterialStdVectorAux
   variable = slip_increment_38
   property = slip_increment
   index = 38
   execute_on = timestep_end
  []
  [slip_increment_39]
   type = MaterialStdVectorAux
   variable = slip_increment_39
   property = slip_increment
   index = 39
   execute_on = timestep_end
  []
  [slip_increment_40]
   type = MaterialStdVectorAux
   variable = slip_increment_40
   property = slip_increment
   index = 40
   execute_on = timestep_end
  []
  [slip_increment_41]
   type = MaterialStdVectorAux
   variable = slip_increment_41
   property = slip_increment
   index = 41
   execute_on = timestep_end
  []
  [slip_increment_42]
   type = MaterialStdVectorAux
   variable = slip_increment_42
   property = slip_increment
   index = 42
   execute_on = timestep_end
  []
  [slip_increment_43]
   type = MaterialStdVectorAux
   variable = slip_increment_43
   property = slip_increment
   index = 43
   execute_on = timestep_end
  []
  [slip_increment_44]
   type = MaterialStdVectorAux
   variable = slip_increment_44
   property = slip_increment
   index = 44
   execute_on = timestep_end
  []
  [slip_increment_45]
   type = MaterialStdVectorAux
   variable = slip_increment_45
   property = slip_increment
   index = 45
   execute_on = timestep_end
  []
  [slip_increment_46]
   type = MaterialStdVectorAux
   variable = slip_increment_46
   property = slip_increment
   index = 46
   execute_on = timestep_end
  []
  [slip_increment_47]
   type = MaterialStdVectorAux
   variable = slip_increment_47
   property = slip_increment
   index = 47
   execute_on = timestep_end
  []
  [slip_resistance_0]
   type = MaterialStdVectorAux
   variable = slip_resistance_0
   property = slip_resistance
   index = 0
   execute_on = timestep_end
  []
  [slip_resistance_1]
   type = MaterialStdVectorAux
   variable = slip_resistance_1
   property = slip_resistance
   index = 1
   execute_on = timestep_end
  []
  [slip_resistance_2]
   type = MaterialStdVectorAux
   variable = slip_resistance_2
   property = slip_resistance
   index = 2
   execute_on = timestep_end
  []
  [slip_resistance_3]
   type = MaterialStdVectorAux
   variable = slip_resistance_3
   property = slip_resistance
   index = 3
   execute_on = timestep_end
  []
  [slip_resistance_4]
   type = MaterialStdVectorAux
   variable = slip_resistance_4
   property = slip_resistance
   index = 4
   execute_on = timestep_end
  []
  [slip_resistance_5]
   type = MaterialStdVectorAux
   variable = slip_resistance_5
   property = slip_resistance
   index = 5
   execute_on = timestep_end
  []
  [slip_resistance_6]
   type = MaterialStdVectorAux
   variable = slip_resistance_6
   property = slip_resistance
   index = 6
   execute_on = timestep_end
  []
  [slip_resistance_7]
   type = MaterialStdVectorAux
   variable = slip_resistance_7
   property = slip_resistance
   index = 7
   execute_on = timestep_end
  []
  [slip_resistance_8]
   type = MaterialStdVectorAux
   variable = slip_resistance_8
   property = slip_resistance
   index = 8
   execute_on = timestep_end
  []
  [slip_resistance_9]
   type = MaterialStdVectorAux
   variable = slip_resistance_9
   property = slip_resistance
   index = 9
   execute_on = timestep_end
  []
  [slip_resistance_10]
   type = MaterialStdVectorAux
   variable = slip_resistance_10
   property = slip_resistance
   index = 10
   execute_on = timestep_end
  []
  [slip_resistance_11]
   type = MaterialStdVectorAux
   variable = slip_resistance_11
   property = slip_resistance
   index = 11
   execute_on = timestep_end
  []
  [slip_resistance_12]
   type = MaterialStdVectorAux
   variable = slip_resistance_12
   property = slip_resistance
   index = 12
   execute_on = timestep_end
  []
  [slip_resistance_13]
   type = MaterialStdVectorAux
   variable = slip_resistance_13
   property = slip_resistance
   index = 13
   execute_on = timestep_end
  []
  [slip_resistance_14]
   type = MaterialStdVectorAux
   variable = slip_resistance_14
   property = slip_resistance
   index = 14
   execute_on = timestep_end
  []
  [slip_resistance_15]
   type = MaterialStdVectorAux
   variable = slip_resistance_15
   property = slip_resistance
   index = 15
   execute_on = timestep_end
  []
  [slip_resistance_16]
   type = MaterialStdVectorAux
   variable = slip_resistance_16
   property = slip_resistance
   index = 16
   execute_on = timestep_end
  []
  [slip_resistance_17]
   type = MaterialStdVectorAux
   variable = slip_resistance_17
   property = slip_resistance
   index = 17
   execute_on = timestep_end
  []
  [slip_resistance_18]
   type = MaterialStdVectorAux
   variable = slip_resistance_18
   property = slip_resistance
   index = 18
   execute_on = timestep_end
  []
  [slip_resistance_19]
   type = MaterialStdVectorAux
   variable = slip_resistance_19
   property = slip_resistance
   index = 19
   execute_on = timestep_end
  []
  [slip_resistance_20]
   type = MaterialStdVectorAux
   variable = slip_resistance_20
   property = slip_resistance
   index = 20
   execute_on = timestep_end
  []
  [slip_resistance_21]
   type = MaterialStdVectorAux
   variable = slip_resistance_21
   property = slip_resistance
   index = 21
   execute_on = timestep_end
  []
  [slip_resistance_22]
   type = MaterialStdVectorAux
   variable = slip_resistance_22
   property = slip_resistance
   index = 22
   execute_on = timestep_end
  []
  [slip_resistance_23]
   type = MaterialStdVectorAux
   variable = slip_resistance_23
   property = slip_resistance
   index = 23
   execute_on = timestep_end
  []
  [slip_resistance_24]
  type = MaterialStdVectorAux
  variable = slip_resistance_24
  property = slip_resistance
  index = 24
  execute_on = timestep_end
 []
 [slip_resistance_25]
  type = MaterialStdVectorAux
  variable = slip_resistance_25
  property = slip_resistance
  index = 25
  execute_on = timestep_end
 []
 [slip_resistance_26]
  type = MaterialStdVectorAux
  variable = slip_resistance_26
  property = slip_resistance
  index = 26
  execute_on = timestep_end
 []
 [slip_resistance_27]
  type = MaterialStdVectorAux
  variable = slip_resistance_27
  property = slip_resistance
  index = 27
  execute_on = timestep_end
 []
 [slip_resistance_28]
  type = MaterialStdVectorAux
  variable = slip_resistance_28
  property = slip_resistance
  index = 28
  execute_on = timestep_end
 []
 [slip_resistance_29]
  type = MaterialStdVectorAux
  variable = slip_resistance_29
  property = slip_resistance
  index = 29
  execute_on = timestep_end
 []
 [slip_resistance_30]
  type = MaterialStdVectorAux
  variable = slip_resistance_30
  property = slip_resistance
  index = 30
  execute_on = timestep_end
 []
 [slip_resistance_31]
  type = MaterialStdVectorAux
  variable = slip_resistance_31
  property = slip_resistance
  index = 31
  execute_on = timestep_end
 []
 [slip_resistance_32]
  type = MaterialStdVectorAux
  variable = slip_resistance_32
  property = slip_resistance
  index = 32
  execute_on = timestep_end
 []
 [slip_resistance_33]
  type = MaterialStdVectorAux
  variable = slip_resistance_33
  property = slip_resistance
  index = 33
  execute_on = timestep_end
 []
 [slip_resistance_34]
  type = MaterialStdVectorAux
  variable = slip_resistance_34
  property = slip_resistance
  index = 34
  execute_on = timestep_end
 []
 [slip_resistance_35]
  type = MaterialStdVectorAux
  variable = slip_resistance_35
  property = slip_resistance
  index = 35
  execute_on = timestep_end
 []
 [slip_resistance_36]
  type = MaterialStdVectorAux
  variable = slip_resistance_36
  property = slip_resistance
  index = 36
  execute_on = timestep_end
 []
 [slip_resistance_37]
  type = MaterialStdVectorAux
  variable = slip_resistance_37
  property = slip_resistance
  index = 37
  execute_on = timestep_end
 []
 [slip_resistance_38]
  type = MaterialStdVectorAux
  variable = slip_resistance_38
  property = slip_resistance
  index = 38
  execute_on = timestep_end
 []
 [slip_resistance_39]
  type = MaterialStdVectorAux
  variable = slip_resistance_39
  property = slip_resistance
  index = 39
  execute_on = timestep_end
 []
 [slip_resistance_40]
  type = MaterialStdVectorAux
  variable = slip_resistance_40
  property = slip_resistance
  index = 40
  execute_on = timestep_end
 []
 [slip_resistance_41]
  type = MaterialStdVectorAux
  variable = slip_resistance_41
  property = slip_resistance
  index = 41
  execute_on = timestep_end
 []
 [slip_resistance_42]
  type = MaterialStdVectorAux
  variable = slip_resistance_42
  property = slip_resistance
  index = 42
  execute_on = timestep_end
 []
 [slip_resistance_43]
  type = MaterialStdVectorAux
  variable = slip_resistance_43
  property = slip_resistance
  index = 43
  execute_on = timestep_end
 []
 [slip_resistance_44]
  type = MaterialStdVectorAux
  variable = slip_resistance_44
  property = slip_resistance
  index = 44
  execute_on = timestep_end
 []
 [slip_resistance_45]
  type = MaterialStdVectorAux
  variable = slip_resistance_45
  property = slip_resistance
  index = 45
  execute_on = timestep_end
 []
 [slip_resistance_46]
  type = MaterialStdVectorAux
  variable = slip_resistance_46
  property = slip_resistance
  index = 46
  execute_on = timestep_end
 []
 [slip_resistance_47]
  type = MaterialStdVectorAux
  variable = slip_resistance_47
  property = slip_resistance
  index = 47
  execute_on = timestep_end
 []
  [disloc_density]
   type = MaterialRealAux
   variable = disloc_density
   property = disloc_density
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
    euler_angle_variables = '1.0 2.0 1.0'
  []
  [stress]
    type = ComputeMultipleCrystalPlasticityStress
    crystal_plasticity_models = 'slip_xtalpl'
    tan_mod_type = exact
  []
  [slip_xtalpl]
    type = CrystalPlasticityUpdate
    loop_num = 10
    amp = 0.0
    number_slip_systems = 48
    slip_sys_file_name = input_slip_sys_bcc48.txt
    plane_file_name = bcc_plane.txt
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
    type = ElementAverageValue
    variable = slip_increment_0
  []
  [slip_increment_1]
    type = ElementAverageValue
    variable = slip_increment_1
  []
  [slip_increment_2]
    type = ElementAverageValue
    variable = slip_increment_2
  []
  [slip_increment_3]
    type = ElementAverageValue
    variable = slip_increment_3
  []
  [slip_increment_4]
    type = ElementAverageValue
    variable = slip_increment_4
  []
  [slip_increment_5]
    type = ElementAverageValue
    variable = slip_increment_5
  []
  [slip_increment_6]
    type = ElementAverageValue
    variable = slip_increment_6
  []
  [slip_increment_7]
    type = ElementAverageValue
    variable = slip_increment_7
  []
  [slip_increment_8]
    type = ElementAverageValue
    variable = slip_increment_8
  []
  [slip_increment_9]
    type = ElementAverageValue
    variable = slip_increment_9
  []
  [slip_increment_10]
    type = ElementAverageValue
    variable = slip_increment_10
  []
  [slip_increment_11]
    type = ElementAverageValue
    variable = slip_increment_11
  []
  [slip_increment_12]
    type = ElementAverageValue
    variable = slip_increment_12
  []
  [slip_increment_13]
    type = ElementAverageValue
    variable = slip_increment_13
  []
  [slip_increment_14]
    type = ElementAverageValue
    variable = slip_increment_14
  []
  [slip_increment_15]
    type = ElementAverageValue
    variable = slip_increment_15
  []
  [slip_increment_16]
    type = ElementAverageValue
    variable = slip_increment_16
  []
  [slip_increment_17]
    type = ElementAverageValue
    variable = slip_increment_17
  []
  [slip_increment_18]
    type = ElementAverageValue
    variable = slip_increment_18
  []
  [slip_increment_19]
    type = ElementAverageValue
    variable = slip_increment_19
  []
  [slip_increment_20]
    type = ElementAverageValue
    variable = slip_increment_20
  []
  [slip_increment_21]
    type = ElementAverageValue
    variable = slip_increment_21
  []
  [slip_increment_22]
    type = ElementAverageValue
    variable = slip_increment_22
  []
  [slip_increment_23]
    type = ElementAverageValue
    variable = slip_increment_23
  []
  [slip_increment_24]
    type = ElementAverageValue
    variable = slip_increment_24
  []
  [slip_increment_25]
    type = ElementAverageValue
    variable = slip_increment_25
  []
  [slip_increment_26]
    type = ElementAverageValue
    variable = slip_increment_26
  []
  [slip_increment_27]
    type = ElementAverageValue
    variable = slip_increment_27
  []
  [slip_increment_28]
    type = ElementAverageValue
    variable = slip_increment_28
  []
  [slip_increment_29]
    type = ElementAverageValue
    variable = slip_increment_29
  []
  [slip_increment_30]
    type = ElementAverageValue
    variable = slip_increment_30
  []
  [slip_increment_31]
    type = ElementAverageValue
    variable = slip_increment_31
  []
  [slip_increment_32]
    type = ElementAverageValue
    variable = slip_increment_32
  []
  [slip_increment_33]
    type = ElementAverageValue
    variable = slip_increment_33
  []
  [slip_increment_34]
    type = ElementAverageValue
    variable = slip_increment_34
  []
  [slip_increment_35]
    type = ElementAverageValue
    variable = slip_increment_35
  []
  [slip_increment_36]
    type = ElementAverageValue
    variable = slip_increment_36
  []
  [slip_increment_37]
    type = ElementAverageValue
    variable = slip_increment_37
  []
  [slip_increment_38]
    type = ElementAverageValue
    variable = slip_increment_38
  []
  [slip_increment_39]
    type = ElementAverageValue
    variable = slip_increment_39
  []
  [slip_increment_40]
    type = ElementAverageValue
    variable = slip_increment_40
  []
  [slip_increment_41]
    type = ElementAverageValue
    variable = slip_increment_41
  []
  [slip_increment_42]
    type = ElementAverageValue
    variable = slip_increment_42
  []
  [slip_increment_43]
    type = ElementAverageValue
    variable = slip_increment_43
  []
  [slip_increment_44]
    type = ElementAverageValue
    variable = slip_increment_44
  []
  [slip_increment_45]
    type = ElementAverageValue
    variable = slip_increment_45
  []
  [slip_increment_46]
    type = ElementAverageValue
    variable = slip_increment_46
  []
  [slip_increment_47]
    type = ElementAverageValue
    variable = slip_increment_47
  []
  [slip_resistance_0]
    type = ElementAverageValue
    variable = slip_resistance_0
  []
  [slip_resistance_1]
    type = ElementAverageValue
    variable = slip_resistance_1
  []
  [slip_resistance_2]
    type = ElementAverageValue
    variable = slip_resistance_2
  []
  [slip_resistance_3]
    type = ElementAverageValue
    variable = slip_resistance_3
  []
  [slip_resistance_4]
    type = ElementAverageValue
    variable = slip_resistance_4
  []
  [slip_resistance_5]
    type = ElementAverageValue
    variable = slip_resistance_5
  []
  [slip_resistance_6]
    type = ElementAverageValue
    variable = slip_resistance_6
  []
  [slip_resistance_7]
    type = ElementAverageValue
    variable = slip_resistance_7
  []
  [slip_resistance_8]
    type = ElementAverageValue
    variable = slip_resistance_8
  []
  [slip_resistance_9]
    type = ElementAverageValue
    variable = slip_resistance_9
  []
  [slip_resistance_10]
    type = ElementAverageValue
    variable = slip_resistance_10
  []
  [slip_resistance_11]
    type = ElementAverageValue
    variable = slip_resistance_11
  []
  [slip_resistance_12]
    type = ElementAverageValue
    variable = slip_resistance_12
  []
  [slip_resistance_13]
    type = ElementAverageValue
    variable = slip_resistance_13
  []
  [slip_resistance_14]
    type = ElementAverageValue
    variable = slip_resistance_14
  []
  [slip_resistance_15]
    type = ElementAverageValue
    variable = slip_resistance_15
  []
  [slip_resistance_16]
    type = ElementAverageValue
    variable = slip_resistance_16
  []
  [slip_resistance_17]
    type = ElementAverageValue
    variable = slip_resistance_17
  []
  [slip_resistance_18]
    type = ElementAverageValue
    variable = slip_resistance_18
  []
  [slip_resistance_19]
    type = ElementAverageValue
    variable = slip_resistance_19
  []
  [slip_resistance_20]
    type = ElementAverageValue
    variable = slip_resistance_20
  []
  [slip_resistance_21]
    type = ElementAverageValue
    variable = slip_resistance_21
  []
  [slip_resistance_22]
    type = ElementAverageValue
    variable = slip_resistance_22
  []
  [slip_resistance_23]
    type = ElementAverageValue
    variable = slip_resistance_23
  []
  [slip_resistance_24]
    type = ElementAverageValue
    variable = slip_resistance_24
  []
  [slip_resistance_25]
    type = ElementAverageValue
    variable = slip_resistance_25
  []
  [slip_resistance_26]
    type = ElementAverageValue
    variable = slip_resistance_26
  []
  [slip_resistance_27]
    type = ElementAverageValue
    variable = slip_resistance_27
  []
  [slip_resistance_28]
    type = ElementAverageValue
    variable = slip_resistance_28
  []
  [slip_resistance_29]
    type = ElementAverageValue
    variable = slip_resistance_29
  []
  [slip_resistance_30]
    type = ElementAverageValue
    variable = slip_resistance_30
  []
  [slip_resistance_31]
    type = ElementAverageValue
    variable = slip_resistance_31
  []
  [slip_resistance_32]
    type = ElementAverageValue
    variable = slip_resistance_32
  []
  [slip_resistance_33]
    type = ElementAverageValue
    variable = slip_resistance_33
  []
  [slip_resistance_34]
    type = ElementAverageValue
    variable = slip_resistance_34
  []
  [slip_resistance_35]
    type = ElementAverageValue
    variable = slip_resistance_35
  []
  [slip_resistance_36]
    type = ElementAverageValue
    variable = slip_resistance_36
  []
  [slip_resistance_37]
    type = ElementAverageValue
    variable = slip_resistance_37
  []
  [slip_resistance_38]
    type = ElementAverageValue
    variable = slip_resistance_38
  []
  [slip_resistance_39]
    type = ElementAverageValue
    variable = slip_resistance_39
  []
  [slip_resistance_40]
    type = ElementAverageValue
    variable = slip_resistance_40
  []
  [slip_resistance_41]
    type = ElementAverageValue
    variable = slip_resistance_41
  []
  [slip_resistance_42]
    type = ElementAverageValue
    variable = slip_resistance_42
  []
  [slip_resistance_43]
    type = ElementAverageValue
    variable = slip_resistance_43
  []
  [slip_resistance_44]
    type = ElementAverageValue
    variable = slip_resistance_44
  []
  [slip_resistance_45]
    type = ElementAverageValue
    variable = slip_resistance_45
  []
  [slip_resistance_46]
    type = ElementAverageValue
    variable = slip_resistance_46
  []
  [slip_resistance_47]
    type = ElementAverageValue
    variable = slip_resistance_47
  []
  [disp_y]
    type = ElementExtremeValue
    variable = disp_y
    value_type = max
  []
  [disloc_density]
    type = ElementExtremeValue
    variable = disloc_density
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
  nl_abs_tol = 1e-10
  nl_rel_tol = 1e-10
  nl_abs_step_tol = 1e-10

  dt = 1e-7
  dtmin = 1e-10
  end_time = 1e-3
[]

[Outputs]
  execute_on = 'timestep_end'
  exodus = true     
  csv = true
  perf_graph = true
[]
