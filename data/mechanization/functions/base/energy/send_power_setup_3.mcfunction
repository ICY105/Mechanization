
scoreboard players operation $predicate mechanization.data = @s mech_gridid
scoreboard players operation $temp_0 mechanization.data = $base.cf.super_conductive_cable.transfer_rate mech_data
execute if entity @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=mech_conductive_cable] run scoreboard players operation $temp_0 mechanization.data = $base.cf.conductive_cable.transfer_rate mech_data
execute if entity @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=mech_copper_cable] run scoreboard players operation $temp_0 mechanization.data = $base.cf.copper_cable.transfer_rate mech_data

scoreboard players operation @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid] mechanization.grid_energy = $temp_0 mech_data
