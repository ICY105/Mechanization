
# spawn item
function mechanization:base/utils/break_block/break_drop_inv
execute if entity @s[tag=mechanization.fluid_tank.t1] run function mechanization:base/utils/break_block/break_machine_t1
execute if entity @s[tag=mechanization.fluid_tank.t2] run function mechanization:base/utils/break_block/break_machine_t2
execute if entity @s[tag=mechanization.fluid_tank.t3] run function mechanization:base/utils/break_block/break_machine_t3
