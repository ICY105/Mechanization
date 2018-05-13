execute at @e[tag=du_spawn_chunks] run summon area_effect_cloud ~ ~ ~ {Tags:["mech_quantum_network","mech_new_network","mech_has_gridid"],Duration:2147483640}
scoreboard players operation @e[tag=mech_new_network] mech_gridid = temp_1 mech_data
scoreboard players set @e[tag=mech_new_network] mech_power 0
tag @e[tag=mech_new_network] remove mech_new_network