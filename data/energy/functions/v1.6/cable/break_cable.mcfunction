
#assign current cable model data
execute if score #cable.direction energy.data matches 0 run scoreboard players remove @s energy.data 2
execute if score #cable.direction energy.data matches 1 run scoreboard players remove @s energy.data 1
execute if score #cable.direction energy.data matches 2 run scoreboard players remove @s energy.data 8
execute if score #cable.direction energy.data matches 3 run scoreboard players remove @s energy.data 4
execute if score #cable.direction energy.data matches 4 run scoreboard players remove @s energy.data 32
execute if score #cable.direction energy.data matches 5 run scoreboard players remove @s energy.data 16

#store values
function #energy:v1/cable_update

#cascade update ID update
scoreboard players operation #predicate energy.data = @s energy.network_id
scoreboard players add #global.incr_id energy.network_id 1
scoreboard players operation #cable.network_id energy.data = #global.incr_id energy.network_id
function energy:v1.6/cable/break_cable_2
