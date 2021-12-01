
setblock ~ ~ ~ minecraft:barrier

scoreboard players set $temp_0 mechanization.data 0
scoreboard players set $temp_1 mechanization.data -1
scoreboard players set $temp_2 mechanization.data 0
scoreboard players set $temp_3 mechanization.data 0
execute as @e[type=minecraft:item_frame,tag=mech_pipe,distance=0.5..1.3] run function mechanization:machines/machines/liquid_pipe/place_pipe
execute as @e[type=#mechanization:valid_block_entities,tag=mech_liquid_dest,distance=0.5..1.3] run function mechanization:machines/machines/liquid_pipe/place_dest
execute as @e[type=#mechanization:valid_block_entities,tag=mech_liquid_src,tag=!mech_liquid_dest,distance=0.5..1.3] run function mechanization:machines/machines/liquid_pipe/place_src

scoreboard players operation @s mechanization.data = $temp_0 mech_data
scoreboard players add $temp_0 mechanization.data 6421000
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_0 mech_data

execute if score $temp_1 mechanization.data matches -1 run scoreboard players operation @s du_uuid = $uuid.incr du_uuid
execute if score $temp_1 mechanization.data matches -1 run scoreboard players add $uuid.incr du_uuid 1
execute if score $temp_1 mechanization.data matches 0.. run scoreboard players operation @s du_uuid = $temp_1 mech_data

execute if score $temp_2 mechanization.data matches 1 run tag @s add mech_pipe_output
execute if score $temp_3 mechanization.data matches 1 run tag @s add mech_pipe_input

tag @s remove mech_new
