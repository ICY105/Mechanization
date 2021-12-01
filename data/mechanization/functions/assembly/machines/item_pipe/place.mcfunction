
setblock ~ ~ ~ minecraft:moving_piston

scoreboard players set $temp_0 mech_data 0
scoreboard players set $temp_1 mech_data -1
execute as @e[tag=mech_item_pipe,distance=0.5..1.3] run function mechanization:assembly/machines/item_pipe/place_2

scoreboard players operation @s mech_data = $temp_0 mech_data
scoreboard players add $temp_0 mech_data 6421000
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_0 mech_data

execute if score $temp_1 mech_data matches -1 run scoreboard players operation @s du_uuid = $uuid.incr du_uuid
execute if score $temp_1 mech_data matches -1 run scoreboard players add $uuid.incr du_uuid 1
execute if score $temp_1 mech_data matches 0.. run scoreboard players operation @s du_uuid = $temp_1 mech_data

tag @s remove mech_new
