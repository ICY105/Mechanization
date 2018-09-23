execute store result score temp_0 du_data run data get entity @s Pos[0] 10
execute store result score temp_1 du_data run data get entity @s Pos[1] 10
execute store result score temp_2 du_data run data get entity @s Pos[2] 10

execute rotated as @p at @p positioned ~ ~0.5 ~ run tp @s ~ ~ ~

execute store result score temp_3 du_data run data get entity @s Pos[0] 10
execute store result score temp_4 du_data run data get entity @s Pos[1] 10
execute store result score temp_5 du_data run data get entity @s Pos[2] 10

scoreboard players operation temp_3 du_data -= temp_0 du_data
scoreboard players operation temp_4 du_data -= temp_1 du_data
scoreboard players operation temp_5 du_data -= temp_2 du_data

scoreboard players set temp_6 du_data 3
execute if entity @p[tag=du_moving] run scoreboard players set temp_6 du_data 5
scoreboard players set temp_7 du_data 2

scoreboard players operation temp_3 du_data *= temp_6 du_data
scoreboard players operation temp_3 du_data /= temp_7 du_data

scoreboard players operation temp_5 du_data *= temp_6 du_data
scoreboard players operation temp_5 du_data /= temp_7 du_data

scoreboard players operation temp_0 du_data += temp_3 du_data
scoreboard players operation temp_1 du_data += temp_4 du_data
scoreboard players operation temp_2 du_data += temp_5 du_data

execute store result entity @s Pos[0] double 0.1 run scoreboard players get temp_0 du_data
execute store result entity @s Pos[1] double 0.1 run scoreboard players get temp_1 du_data
execute store result entity @s Pos[2] double 0.1 run scoreboard players get temp_2 du_data

execute at @s run tp @s ~ ~ ~ 