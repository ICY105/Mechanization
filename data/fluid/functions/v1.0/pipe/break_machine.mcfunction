
#reset network id
execute if score #pipe.direction fluid.data matches 0 run scoreboard players set @s fluid.network_id.up 0
execute if score #pipe.direction fluid.data matches 1 run scoreboard players set @s fluid.network_id.down 0
execute if score #pipe.direction fluid.data matches 2 run scoreboard players set @s fluid.network_id.north 0
execute if score #pipe.direction fluid.data matches 3 run scoreboard players set @s fluid.network_id.south 0
execute if score #pipe.direction fluid.data matches 4 run scoreboard players set @s fluid.network_id.east 0
execute if score #pipe.direction fluid.data matches 5 run scoreboard players set @s fluid.network_id.west 0
