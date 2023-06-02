
scoreboard players add #global.incr_id energy.network_id 1
scoreboard players operation #tank.out energy.data = #global.incr_id energy.network_id

execute if score #tank.direction energy.data matches 0 run scoreboard players operation @s energy.network_id.down = #global.incr_id energy.network_id
execute if score #tank.direction energy.data matches 1 run scoreboard players operation @s energy.network_id.up = #global.incr_id energy.network_id
execute if score #tank.direction energy.data matches 2 run scoreboard players operation @s energy.network_id.north = #global.incr_id energy.network_id
execute if score #tank.direction energy.data matches 3 run scoreboard players operation @s energy.network_id.south = #global.incr_id energy.network_id
execute if score #tank.direction energy.data matches 4 run scoreboard players operation @s energy.network_id.east = #global.incr_id energy.network_id
execute if score #tank.direction energy.data matches 5 run scoreboard players operation @s energy.network_id.west = #global.incr_id energy.network_id
