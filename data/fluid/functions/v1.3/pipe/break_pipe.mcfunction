
# assign current pipe model data
execute if score #pipe.direction fluid.data matches 0 run scoreboard players remove @s fluid.data 2
execute if score #pipe.direction fluid.data matches 1 run scoreboard players remove @s fluid.data 1
execute if score #pipe.direction fluid.data matches 2 run scoreboard players remove @s fluid.data 8
execute if score #pipe.direction fluid.data matches 3 run scoreboard players remove @s fluid.data 4
execute if score #pipe.direction fluid.data matches 4 run scoreboard players remove @s fluid.data 32
execute if score #pipe.direction fluid.data matches 5 run scoreboard players remove @s fluid.data 16

# store values
function #fluid:v1/pipe_update

# cascade update ID update
scoreboard players operation #predicate fluid.data = @s fluid.network_id
scoreboard players add #global.incr_id fluid.network_id 1
scoreboard players operation #pipe.network_id fluid.data = #global.incr_id fluid.network_id
function fluid:v1.3/pipe/break_pipe_2
