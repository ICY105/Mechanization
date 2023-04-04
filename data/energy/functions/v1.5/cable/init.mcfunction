
#ensure scores are initialized
scoreboard players add @s energy.transfer_rate 0
scoreboard players add @s energy.network_id 0

#get network id
scoreboard players set #cable.network_id energy.data 0
execute align xyz positioned ~ ~1 ~ as @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.5/cable/init_2
execute align xyz positioned ~ ~-1 ~ as @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.5/cable/init_2
execute align xyz positioned ~ ~ ~-1 as @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.5/cable/init_2
execute align xyz positioned ~ ~ ~1 as @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.5/cable/init_2
execute align xyz positioned ~1 ~ ~ as @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.5/cable/init_2
execute align xyz positioned ~-1 ~ ~ as @e[type=#energy:valid_block_entities,tag=energy.cable,dx=0,dy=0,dz=0] at @s run function energy:v1.5/cable/init_2

execute if score #cable.network_id energy.data matches 0 run scoreboard players add #global.incr_id energy.network_id 1
execute if score #cable.network_id energy.data matches 0 run scoreboard players operation #cable.network_id energy.data = #global.incr_id energy.network_id
scoreboard players operation @s energy.network_id = #cable.network_id energy.data

#call update function
function energy:v1.5/cable/update

#setup network transfer capacity
scoreboard players set @e[type=#energy:valid_block_entities,tag=energy.cable] energy.transfer_capacity -1
execute as @e[type=#energy:valid_block_entities,tag=energy.cable] at @s run function energy:v1.5/cable/setup_cable_network
