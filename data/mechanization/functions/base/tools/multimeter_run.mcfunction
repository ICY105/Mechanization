
scoreboard players operation $base.temp_0 mech_data = @s mech_gridid
#execute unless predicate du:entity/is_sneaking as @e[type=#mechanization:valid_block_entities,distance=..0.5] at @s run function #mechanization:multimeter_readout
#execute if predicate du:entity/is_sneaking as @e[type=#mechanization:valid_block_entities,distance=..0.5] at @s run function mechanization:base/tools/multimeter_idlock
execute as @e[type=#mechanization:valid_block_entities,distance=..0.5] at @s run function #mechanization:multimeter_readout
scoreboard players set $base.in_0 mech_data 0
