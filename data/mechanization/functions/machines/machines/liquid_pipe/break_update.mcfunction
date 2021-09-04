
scoreboard players operation @s du_uuid = $temp_2 mech_data
execute as @e[type=item_frame,tag=mech_pipe,distance=0.5..1.3,predicate=mechanization:matches_uuid] at @s run function mechanization:machines/machines/liquid_pipe/break_update
