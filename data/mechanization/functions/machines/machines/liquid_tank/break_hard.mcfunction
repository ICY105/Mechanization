
#spawn item
execute if entity @s[tag=mechanization.liquid_tank.t1] run function mechanization:base/utils/break_machine_t1
execute if entity @s[tag=mechanization.liquid_tank.t2] run function mechanization:base/utils/break_machine_t2
execute if entity @s[tag=mechanization.liquid_tank.t3] run function mechanization:base/utils/break_machine_t3

#fix pipes
function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
