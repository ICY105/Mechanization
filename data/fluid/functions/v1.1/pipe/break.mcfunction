
scoreboard players operation #pipe.temp fluid.data = @s fluid.network_id
scoreboard players set @s fluid.network_id 0

#up
scoreboard players set #pipe.direction fluid.data 0
execute align xyz positioned ~ ~1 ~ as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.1/pipe/break_2

#down
scoreboard players set #pipe.direction fluid.data 1
execute align xyz positioned ~ ~-1 ~ as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.1/pipe/break_2

#north
scoreboard players set #pipe.direction fluid.data 2
execute align xyz positioned ~ ~ ~-1 as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.1/pipe/break_2

#south
scoreboard players set #pipe.direction fluid.data 3
execute align xyz positioned ~ ~ ~1 as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.1/pipe/break_2

#east
scoreboard players set #pipe.direction fluid.data 4
execute align xyz positioned ~1 ~ ~ as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.1/pipe/break_2

#west
scoreboard players set #pipe.direction fluid.data 5
execute align xyz positioned ~-1 ~ ~ as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.1/pipe/break_2

#update machine ids
scoreboard players operation #predicate fluid.data = #pipe.temp fluid.data
execute as @e[type=#fluid:valid_tank_entities,tag=fluid.tank,predicate=fluid:v1.1/has_network_id] at @s run function fluid:v1.1/pipe/break_reconnect

#setup network transfer capacity
scoreboard players set @e[tag=fluid.pipe] fluid.transfer_capacity -1
execute as @e[tag=fluid.pipe] at @s run function fluid:v1.1/pipe/init_network_transfer_rate
