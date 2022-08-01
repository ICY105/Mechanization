
scoreboard players operation @s mechanization.item_id = $temp_2 mechanization.data
execute as @e[type=item_frame,tag=mechanization.pipe,distance=0.5..1.3,predicate=mechanization:matches_uuid] at @s run function mechanization:machines/machines/liquid_pipe/break_update
