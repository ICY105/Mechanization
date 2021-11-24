
scoreboard players operation @s mech_gridid = $temp_2 mech_data
execute as @e[type=item_frame,tag=mech_cable,distance=0.5..1.3,predicate=mechanization:matches_gridid] at @s run function mechanization:base/machines/cable/break_update
execute positioned ~ ~1 ~ as @e[type=#mechanization:valid_block_entities,distance=0.5..1.3,predicate=mechanization:matches_gridid,scores={mech_power=-2147483648..}] at @s positioned ~ ~-1 ~ run function mechanization:base/machines/cable/break_update
