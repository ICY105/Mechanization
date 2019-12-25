scoreboard players operation temp_0 mech_data = @s mech_gridid
execute unless predicate du:entity/is_sneaking as @e[distance=..0.5] at @s run function #mechanization:multimeter_readout
execute if predicate du:entity/is_sneaking as @e[distance=..0.5] at @s run function mechanization:base/tools/multimeter_idlock
scoreboard players set in_0 mech_data 0