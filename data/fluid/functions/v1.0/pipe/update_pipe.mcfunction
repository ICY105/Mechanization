
# assign connected cable model data id
execute if score #pipe.direction fluid.data matches 0 run scoreboard players add #pipe.model_data fluid.data 1
execute if score #pipe.direction fluid.data matches 1 run scoreboard players add #pipe.model_data fluid.data 2
execute if score #pipe.direction fluid.data matches 2 run scoreboard players add #pipe.model_data fluid.data 4
execute if score #pipe.direction fluid.data matches 3 run scoreboard players add #pipe.model_data fluid.data 8
execute if score #pipe.direction fluid.data matches 4 run scoreboard players add #pipe.model_data fluid.data 16
execute if score #pipe.direction fluid.data matches 5 run scoreboard players add #pipe.model_data fluid.data 32

# store values
function #fluid:v1/pipe_update
