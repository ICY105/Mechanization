
#update adjacent devices
scoreboard players set #tank.direction fluid.data 0
scoreboard players set #tank.out fluid.data 0
execute align xyz positioned ~ ~1 ~ as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.2/tank/update_adjacent_2
execute unless score #tank.out fluid.data matches 0 run scoreboard players operation @s fluid.network_id_up = #tank.out fluid.data

scoreboard players set #tank.direction fluid.data 1
scoreboard players set #tank.out fluid.data 0
execute align xyz positioned ~ ~-1 ~ as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.2/tank/update_adjacent_2
execute unless score #tank.out fluid.data matches 0 run scoreboard players operation @s fluid.network_id_down = #tank.out fluid.data

scoreboard players set #tank.direction fluid.data 2
scoreboard players set #tank.out fluid.data 0
execute align xyz positioned ~ ~ ~-1 as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.2/tank/update_adjacent_2
execute unless score #tank.out fluid.data matches 0 run scoreboard players operation @s fluid.network_id_south = #tank.out fluid.data

scoreboard players set #tank.direction fluid.data 3
scoreboard players set #tank.out fluid.data 0
execute align xyz positioned ~ ~ ~1 as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.2/tank/update_adjacent_2
execute unless score #tank.out fluid.data matches 0 run scoreboard players operation @s fluid.network_id_north = #tank.out fluid.data

scoreboard players set #tank.direction fluid.data 4
scoreboard players set #tank.out fluid.data 0
execute align xyz positioned ~1 ~ ~ as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.2/tank/update_adjacent_2
execute unless score #tank.out fluid.data matches 0 run scoreboard players operation @s fluid.network_id_west = #tank.out fluid.data

scoreboard players set #tank.direction fluid.data 5
scoreboard players set #tank.out fluid.data 0
execute align xyz positioned ~-1 ~ ~ as @e[dx=0,dy=0,dz=0] at @s run function fluid:v1.2/tank/update_adjacent_2
execute unless score #tank.out fluid.data matches 0 run scoreboard players operation @s fluid.network_id_east = #tank.out fluid.data
