
scoreboard players operation @s du_uuid = $temp_2 mech_data
execute as @e[tag=mech_pipe,distance=0.5..1.4,predicate=mechanization:matches_uuid] at @s run function mechanization:machines/machines/liquid_pipe/break_update
