
scoreboard players operation @s mechanization.item_id = #id mechanization.data
execute as @e[type=minecraft:item_display,tag=mechanization.item_pipe,distance=0.5..1.3,predicate=mechanization:matches_uuid] at @s run function mechanization:assembly/blocks/item_pipe/break_update
