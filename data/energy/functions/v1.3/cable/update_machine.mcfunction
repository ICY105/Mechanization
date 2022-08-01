

#check if valid side
scoreboard players operation #cable.in energy.data = #cable.direction energy.data
scoreboard players set #cable.out energy.data 1
function #energy:v1/cable_can_connect

#assign network id
execute if score #cable.out energy.data matches 1 if score #cable.direction energy.data matches 1 run scoreboard players operation @s energy.network_id_up = #cable.network_id energy.data
execute if score #cable.out energy.data matches 1 if score #cable.direction energy.data matches 0 run scoreboard players operation @s energy.network_id_down = #cable.network_id energy.data
execute if score #cable.out energy.data matches 1 if score #cable.direction energy.data matches 2 run scoreboard players operation @s energy.network_id_north = #cable.network_id energy.data
execute if score #cable.out energy.data matches 1 if score #cable.direction energy.data matches 3 run scoreboard players operation @s energy.network_id_south = #cable.network_id energy.data
execute if score #cable.out energy.data matches 1 if score #cable.direction energy.data matches 4 run scoreboard players operation @s energy.network_id_east = #cable.network_id energy.data
execute if score #cable.out energy.data matches 1 if score #cable.direction energy.data matches 5 run scoreboard players operation @s energy.network_id_west = #cable.network_id energy.data

#assign model data id
execute if score #cable.out energy.data matches 1 if score #cable.direction energy.data matches 0 run scoreboard players add #cable.model_data energy.data 1
execute if score #cable.out energy.data matches 1 if score #cable.direction energy.data matches 1 run scoreboard players add #cable.model_data energy.data 2
execute if score #cable.out energy.data matches 1 if score #cable.direction energy.data matches 2 run scoreboard players add #cable.model_data energy.data 4
execute if score #cable.out energy.data matches 1 if score #cable.direction energy.data matches 3 run scoreboard players add #cable.model_data energy.data 8
execute if score #cable.out energy.data matches 1 if score #cable.direction energy.data matches 4 run scoreboard players add #cable.model_data energy.data 16
execute if score #cable.out energy.data matches 1 if score #cable.direction energy.data matches 5 run scoreboard players add #cable.model_data energy.data 32
