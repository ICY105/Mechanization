
scoreboard players set @e[type=#mechanization:valid_block_entities,predicate=mechanization:gridid_not_zero] mechanization.grid_energy -1
execute as @e[type=#mechanization:valid_block_entities,predicate=mechanization:gridid_not_zero] run function mechanization:base/energy/send_power_setup_2

