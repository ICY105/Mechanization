
# init values
scoreboard players set #cable.model_data energy.data 0
scoreboard players operation #cable.network_id energy.data = @s energy.network_id

#up
scoreboard players set #cable.direction energy.data 0
execute align xyz positioned ~ ~1 ~ as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.6/cable/update_2

#down
scoreboard players set #cable.direction energy.data 1
execute align xyz positioned ~ ~-1 ~ as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.6/cable/update_2

#north
scoreboard players set #cable.direction energy.data 2
execute align xyz positioned ~ ~ ~-1 as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.6/cable/update_2

#south
scoreboard players set #cable.direction energy.data 3
execute align xyz positioned ~ ~ ~1 as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.6/cable/update_2

#east
scoreboard players set #cable.direction energy.data 4
execute align xyz positioned ~1 ~ ~ as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.6/cable/update_2

#west
scoreboard players set #cable.direction energy.data 5
execute align xyz positioned ~-1 ~ ~ as @e[type=#energy:valid_block_entities,dx=0,dy=0,dz=0] at @s run function energy:v1.6/cable/update_2

# store values
scoreboard players operation @s energy.data = #cable.model_data energy.data
function #energy:v1/cable_update
