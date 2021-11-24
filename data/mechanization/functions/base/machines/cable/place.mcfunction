
setblock ~ ~ ~ minecraft:moving_piston

scoreboard players set $temp_0 mech_data 0
scoreboard players set $temp_1 mech_data -1
scoreboard players set $temp_2 mech_data 0
scoreboard players set $temp_3 mech_data 0

execute as @e[type=minecraft:item_frame,tag=mech_cable,distance=0.5..1.3] run function mechanization:base/machines/cable/place_connect_cable

scoreboard players set $in_0 mech_data 0
execute align xyz positioned ~ ~1 ~ as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0,tag=mech_cable_init] run function mechanization:base/machines/cable/place_connect_machine
scoreboard players set $in_0 mech_data 1
execute align xyz positioned ~ ~-1 ~ as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0,tag=mech_cable_init] run function mechanization:base/machines/cable/place_connect_machine
scoreboard players set $in_0 mech_data 2
execute align xyz positioned ~1 ~ ~ as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0,tag=mech_cable_init] run function mechanization:base/machines/cable/place_connect_machine
scoreboard players set $in_0 mech_data 3
execute align xyz positioned ~-1 ~ ~ as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0,tag=mech_cable_init] run function mechanization:base/machines/cable/place_connect_machine
scoreboard players set $in_0 mech_data 4
execute align xyz positioned ~ ~ ~1 as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0,tag=mech_cable_init] run function mechanization:base/machines/cable/place_connect_machine
scoreboard players set $in_0 mech_data 5
execute align xyz positioned ~ ~ ~-1 as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0,tag=mech_cable_init] run function mechanization:base/machines/cable/place_connect_machine

scoreboard players operation @s mech_data = $temp_0 mech_data
scoreboard players add $temp_0 mech_data 6421000
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_0 mech_data

execute if score $temp_1 mech_data matches -1 run scoreboard players operation @s mech_gridid = $uuid.incr du_uuid
execute if score $temp_1 mech_data matches -1 run scoreboard players add $uuid.incr du_uuid 1
execute if score $temp_1 mech_data matches 0.. run scoreboard players operation @s mech_gridid = $temp_1 mech_data

tag @s remove mech_new
