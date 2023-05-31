
scoreboard players operation #cable.temp energy.data = @s energy.network_id
scoreboard players set @s energy.network_id 0

#up
scoreboard players set #cable.direction energy.data 0
execute align xyz positioned ~ ~1 ~ as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.6/cable/break_2

#down
scoreboard players set #cable.direction energy.data 1
execute align xyz positioned ~ ~-1 ~ as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.6/cable/break_2

#north
scoreboard players set #cable.direction energy.data 2
execute align xyz positioned ~ ~ ~-1 as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.6/cable/break_2

#south
scoreboard players set #cable.direction energy.data 3
execute align xyz positioned ~ ~ ~1 as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.6/cable/break_2

#east
scoreboard players set #cable.direction energy.data 4
execute align xyz positioned ~1 ~ ~ as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.6/cable/break_2

#west
scoreboard players set #cable.direction energy.data 5
execute align xyz positioned ~-1 ~ ~ as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.6/cable/break_2

#update machine ids
scoreboard players operation #predicate energy.data = #cable.temp energy.data
execute as @e[type=#energy:valid_block_entities,tag=!energy.cable,predicate=energy:v1.6/has_network_id] at @s run function energy:v1.6/cable/break_reconnect

#setup network transfer capacity
scoreboard players set @e[type=#energy:valid_block_entities,tag=energy.cable] energy.transfer_capacity -1
execute as @e[type=#energy:valid_block_entities,tag=energy.cable] at @s run function energy:v1.6/cable/setup_cable_network
