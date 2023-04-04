
#assign connected cable model data id
execute if score #cable.direction energy.data matches 0 run scoreboard players add #cable.model_data energy.data 1
execute if score #cable.direction energy.data matches 1 run scoreboard players add #cable.model_data energy.data 2
execute if score #cable.direction energy.data matches 2 run scoreboard players add #cable.model_data energy.data 4
execute if score #cable.direction energy.data matches 3 run scoreboard players add #cable.model_data energy.data 8
execute if score #cable.direction energy.data matches 4 run scoreboard players add #cable.model_data energy.data 16
execute if score #cable.direction energy.data matches 5 run scoreboard players add #cable.model_data energy.data 32

# store values
function #energy:v1/cable_update
