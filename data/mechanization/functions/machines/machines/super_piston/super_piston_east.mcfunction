particle flame ~1 ~ ~ 0.3 0 0 0 10

scoreboard players set temp_0 mech_data 0
execute unless block ~1 ~ ~ air run scoreboard players set temp_0 mech_data 1

execute if score temp_0 mech_data matches 1 if block ~2 ~ ~ air run scoreboard players set temp_0 mech_data 2
execute if score temp_0 mech_data matches 2 positioned ~0.5 ~-0.5 ~-0.5 as @e[dx=0] at @s run tp @s ~1 ~ ~
execute if score temp_0 mech_data matches 2 run clone ~1 ~ ~ ~1 ~ ~ ~2 ~ ~ replace move

execute if score temp_0 mech_data matches 1 if block ~3 ~ ~ air run scoreboard players set temp_0 mech_data 3
execute if score temp_0 mech_data matches 3 positioned ~0.5 ~-0.5 ~-0.5 as @e[dx=1] at @s run tp @s ~1 ~ ~
execute if score temp_0 mech_data matches 3 run clone ~1 ~ ~ ~2 ~ ~ ~2 ~ ~ replace move

execute if score temp_0 mech_data matches 1 if block ~4 ~ ~ air run scoreboard players set temp_0 mech_data 4
execute if score temp_0 mech_data matches 4 positioned ~0.5 ~-0.5 ~-0.5 as @e[dx=2] at @s run tp @s ~1 ~ ~
execute if score temp_0 mech_data matches 4 run clone ~1 ~ ~ ~3 ~ ~ ~2 ~ ~ replace move

execute if score temp_0 mech_data matches 1 if block ~5 ~ ~ air run scoreboard players set temp_0 mech_data 5
execute if score temp_0 mech_data matches 5 positioned ~0.5 ~-0.5 ~-0.5 as @e[dx=3] at @s run tp @s ~1 ~ ~
execute if score temp_0 mech_data matches 5 run clone ~1 ~ ~ ~4 ~ ~ ~2 ~ ~ replace move

execute if score temp_0 mech_data matches 1 if block ~6 ~ ~ air run scoreboard players set temp_0 mech_data 6
execute if score temp_0 mech_data matches 6 positioned ~0.5 ~-0.5 ~-0.5 as @e[dx=4] at @s run tp @s ~1 ~ ~
execute if score temp_0 mech_data matches 6 run clone ~1 ~ ~ ~5 ~ ~ ~2 ~ ~ replace move

execute if score temp_0 mech_data matches 1 if block ~7 ~ ~ air run scoreboard players set temp_0 mech_data 7
execute if score temp_0 mech_data matches 7 positioned ~0.5 ~-0.5 ~-0.5 as @e[dx=5] at @s run tp @s ~1 ~ ~
execute if score temp_0 mech_data matches 7 run clone ~1 ~ ~ ~6 ~ ~ ~2 ~ ~ replace move

execute if score temp_0 mech_data matches 1 if block ~8 ~ ~ air run scoreboard players set temp_0 mech_data 8
execute if score temp_0 mech_data matches 8 positioned ~0.5 ~-0.5 ~-0.5 as @e[dx=6] at @s run tp @s ~1 ~ ~
execute if score temp_0 mech_data matches 8 run clone ~1 ~ ~ ~7 ~ ~ ~2 ~ ~ replace move

execute if score temp_0 mech_data matches 1 if block ~9 ~ ~ air run scoreboard players set temp_0 mech_data 9
execute if score temp_0 mech_data matches 9 positioned ~0.5 ~-0.5 ~-0.5 as @e[dx=7] at @s run tp @s ~1 ~ ~
execute if score temp_0 mech_data matches 9 run clone ~1 ~ ~ ~8 ~ ~ ~2 ~ ~ replace move
