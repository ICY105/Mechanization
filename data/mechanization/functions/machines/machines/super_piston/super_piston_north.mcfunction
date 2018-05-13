particle flame ~ ~ ~-1 0 0 0.3 0 10

scoreboard players set temp_0 mech_data 0
execute unless block ~ ~ ~-1 air run scoreboard players set temp_0 mech_data 1

execute if score temp_0 mech_data matches 1 if block ~ ~ ~-2 air run scoreboard players set temp_0 mech_data 2
execute if score temp_0 mech_data matches 2 align xyz positioned ~ ~ ~-1 as @e[dz=0] at @s run tp @s ~ ~ ~-1
execute if score temp_0 mech_data matches 2 run clone ~ ~ ~-1 ~ ~ ~-1 ~ ~ ~-2 replace move

execute if score temp_0 mech_data matches 1 if block ~ ~ ~-3 air run scoreboard players set temp_0 mech_data 3
execute if score temp_0 mech_data matches 3 align xyz positioned ~ ~ ~-2 as @e[dz=1] at @s run tp @s ~ ~ ~-1
execute if score temp_0 mech_data matches 3 run clone ~ ~ ~-1 ~ ~ ~-2 ~ ~ ~-3 replace move

execute if score temp_0 mech_data matches 1 if block ~ ~ ~-4 air run scoreboard players set temp_0 mech_data 4
execute if score temp_0 mech_data matches 4 align xyz positioned ~ ~ ~-3 as @e[dz=2] at @s run tp @s ~ ~ ~-1
execute if score temp_0 mech_data matches 4 run clone ~ ~ ~-1 ~ ~ ~-3 ~ ~ ~-4 replace move

execute if score temp_0 mech_data matches 1 if block ~ ~ ~-5 air run scoreboard players set temp_0 mech_data 5
execute if score temp_0 mech_data matches 5 align xyz positioned ~ ~ ~-4 as @e[dz=3] at @s run tp @s ~ ~ ~-1
execute if score temp_0 mech_data matches 5 run clone ~ ~ ~-1 ~ ~ ~-4 ~ ~ ~-5 replace move

execute if score temp_0 mech_data matches 1 if block ~ ~ ~-6 air run scoreboard players set temp_0 mech_data 6
execute if score temp_0 mech_data matches 6 align xyz positioned ~ ~ ~-5 as @e[dz=4] at @s run tp @s ~ ~ ~-1
execute if score temp_0 mech_data matches 6 run clone ~ ~ ~-1 ~ ~ ~-5 ~ ~ ~-6 replace move

execute if score temp_0 mech_data matches 1 if block ~ ~ ~-7 air run scoreboard players set temp_0 mech_data 7
execute if score temp_0 mech_data matches 7 align xyz positioned ~ ~ ~-6 as @e[dz=5] at @s run tp @s ~ ~ ~-1
execute if score temp_0 mech_data matches 7 run clone ~ ~ ~-1 ~ ~ ~-6 ~ ~ ~-7 replace move

execute if score temp_0 mech_data matches 1 if block ~ ~ ~-8 air run scoreboard players set temp_0 mech_data 8
execute if score temp_0 mech_data matches 8 align xyz positioned ~ ~ ~-7 as @e[dz=6] at @s run tp @s ~ ~ ~-1
execute if score temp_0 mech_data matches 8 run clone ~ ~ ~-1 ~ ~ ~-7 ~ ~ ~-8 replace move

execute if score temp_0 mech_data matches 1 if block ~ ~ ~-9 air run scoreboard players set temp_0 mech_data 9
execute if score temp_0 mech_data matches 9 align xyz positioned ~ ~ ~-8 as @e[dz=7] at @s run tp @s ~ ~ ~-1
execute if score temp_0 mech_data matches 9 run clone ~ ~ ~-1 ~ ~ ~-8 ~ ~ ~-9 replace move
