

#check if valid side
scoreboard players operation #pipe.in fluid.data = #pipe.direction fluid.data
scoreboard players set #pipe.out fluid.data 1
function #fluid:v1/pipe_can_connect

#assign network id
execute if score #pipe.out fluid.data matches 1 if score #pipe.direction fluid.data matches 1 run scoreboard players operation @s fluid.network_id.up = #pipe.network_id fluid.data
execute if score #pipe.out fluid.data matches 1 if score #pipe.direction fluid.data matches 0 run scoreboard players operation @s fluid.network_id.down = #pipe.network_id fluid.data
execute if score #pipe.out fluid.data matches 1 if score #pipe.direction fluid.data matches 2 run scoreboard players operation @s fluid.network_id.north = #pipe.network_id fluid.data
execute if score #pipe.out fluid.data matches 1 if score #pipe.direction fluid.data matches 3 run scoreboard players operation @s fluid.network_id.south = #pipe.network_id fluid.data
execute if score #pipe.out fluid.data matches 1 if score #pipe.direction fluid.data matches 4 run scoreboard players operation @s fluid.network_id.east = #pipe.network_id fluid.data
execute if score #pipe.out fluid.data matches 1 if score #pipe.direction fluid.data matches 5 run scoreboard players operation @s fluid.network_id.west = #pipe.network_id fluid.data

#assign model data id
execute if score #pipe.out fluid.data matches 1 if score #pipe.direction fluid.data matches 0 run scoreboard players add #pipe.model_data fluid.data 1
execute if score #pipe.out fluid.data matches 1 if score #pipe.direction fluid.data matches 1 run scoreboard players add #pipe.model_data fluid.data 2
execute if score #pipe.out fluid.data matches 1 if score #pipe.direction fluid.data matches 2 run scoreboard players add #pipe.model_data fluid.data 4
execute if score #pipe.out fluid.data matches 1 if score #pipe.direction fluid.data matches 3 run scoreboard players add #pipe.model_data fluid.data 8
execute if score #pipe.out fluid.data matches 1 if score #pipe.direction fluid.data matches 4 run scoreboard players add #pipe.model_data fluid.data 16
execute if score #pipe.out fluid.data matches 1 if score #pipe.direction fluid.data matches 5 run scoreboard players add #pipe.model_data fluid.data 32
