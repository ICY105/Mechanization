execute store result score temp_0 mech_data run data get entity @s Rotation[1] 1000

scoreboard players set temp_1 mech_data -1
scoreboard players operation temp_0 mech_data *= temp_1 mech_data

execute store result entity @s Rotation[1] float 0.001 run scoreboard players get temp_0 mech_data

execute at @s run tp @s ^ ^ ^0.75 ~ ~
