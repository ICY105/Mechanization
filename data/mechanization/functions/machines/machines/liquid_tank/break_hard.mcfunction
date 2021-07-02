
#spawn item
execute if entity @s[tag=mech_t1_liquid_tank] run function mechanization:base/utils/break_machine_t1
execute if entity @s[tag=mech_t2_liquid_tank] run function mechanization:base/utils/break_machine_t2
execute if entity @s[tag=mech_t3_liquid_tank] run function mechanization:base/utils/break_machine_t3

#fix pipes
function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
