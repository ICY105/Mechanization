
scoreboard players operation @s du_uuid = $temp_2 mech_data
execute as @e[tag=mech_item_pipe,distance=0.5..1.3,predicate=mechanization:matches_uuid] at @s run function mechanization:assembly/machines/item_pipe/break_update
