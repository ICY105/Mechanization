
scoreboard players set #model mechanization.data 0
scoreboard players set #id mechanization.data -1
execute as @e[tag=mechanization.item_pipe,distance=0.5..1.3] run function mechanization:assembly/blocks/item_pipe/place_3

scoreboard players operation @s mechanization.data = #model mechanization.data
scoreboard players add #model mechanization.data 6421000
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get #model mechanization.data

execute if score #id mechanization.data matches -1 run scoreboard players add #global_id mechanization.item_id 1
execute if score #id mechanization.data matches -1 run scoreboard players operation @s mechanization.item_id = #global_id mechanization.item_id
execute if score #id mechanization.data matches 0.. run scoreboard players operation @s mechanization.item_id = #id mechanization.data

tag @s remove mechanization.new
