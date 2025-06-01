
scoreboard players set #model mechanization.data 0
scoreboard players set #id mechanization.data -1
execute as @e[type=minecraft:item_display,tag=mechanization.item_pipe,distance=0.5..1.3] run function mechanization:assembly/blocks/item_pipe/place_3

scoreboard players operation @s mechanization.data = #model mechanization.data
item modify entity @s contents {"function":"minecraft:set_custom_model_data","floats":{"values":[{"type":"minecraft:score","target":{"type":"minecraft:context","target":"this"},"score":"mechanization.data","scale":1}],"mode":"replace_all"}}

execute if score #id mechanization.data matches -1 run scoreboard players add #global_id mechanization.item_id 1
execute if score #id mechanization.data matches -1 run scoreboard players operation @s mechanization.item_id = #global_id mechanization.item_id
execute if score #id mechanization.data matches 0.. run scoreboard players operation @s mechanization.item_id = #id mechanization.data

tag @s remove mechanization.new
