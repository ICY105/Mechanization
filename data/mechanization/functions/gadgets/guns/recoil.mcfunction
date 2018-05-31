#vertical
scoreboard players operation in_0 du_data = temp_1 mech_data
function du:math/random
execute if score out_0 du_data matches 1 run tp @s ~ ~ ~ ~ ~-0.75
execute if score out_0 du_data matches 2 run tp @s ~ ~ ~ ~ ~-1.5
execute if score out_0 du_data matches 3 run tp @s ~ ~ ~ ~ ~-2.25
execute if score out_0 du_data matches 4 run tp @s ~ ~ ~ ~ ~-3.0
execute if score out_0 du_data matches 5 run tp @s ~ ~ ~ ~ ~-3.75
execute if score out_0 du_data matches 6 run tp @s ~ ~ ~ ~ ~-4.5
execute if score out_0 du_data matches 7 run tp @s ~ ~ ~ ~ ~-5.25
execute if score out_0 du_data matches 8 run tp @s ~ ~ ~ ~ ~-6.0

#horizontal
scoreboard players operation in_0 du_data = temp_2 mech_data
scoreboard players set temp_0 du_data 2
scoreboard players operation in_0 du_data *= temp_0 du_data
function du:math/random
scoreboard players operation out_0 du_data -= temp_2 mech_data

execute if score out_0 du_data matches -8 run tp @s ~ ~ ~ ~-1.6 ~
execute if score out_0 du_data matches -7 run tp @s ~ ~ ~ ~-1.4 ~
execute if score out_0 du_data matches -6 run tp @s ~ ~ ~ ~-1.2 ~
execute if score out_0 du_data matches -5 run tp @s ~ ~ ~ ~-1.0 ~
execute if score out_0 du_data matches -4 run tp @s ~ ~ ~ ~-0.8 ~
execute if score out_0 du_data matches -3 run tp @s ~ ~ ~ ~-0.6 ~
execute if score out_0 du_data matches -2 run tp @s ~ ~ ~ ~-0.4 ~
execute if score out_0 du_data matches -1 run tp @s ~ ~ ~ ~-0.2 ~

execute if score out_0 du_data matches 1 run tp @s ~ ~ ~ ~0.2 ~
execute if score out_0 du_data matches 2 run tp @s ~ ~ ~ ~0.4 ~
execute if score out_0 du_data matches 3 run tp @s ~ ~ ~ ~0.6 ~
execute if score out_0 du_data matches 4 run tp @s ~ ~ ~ ~0.8 ~
execute if score out_0 du_data matches 5 run tp @s ~ ~ ~ ~1.0 ~
execute if score out_0 du_data matches 6 run tp @s ~ ~ ~ ~1.2 ~
execute if score out_0 du_data matches 7 run tp @s ~ ~ ~ ~1.4 ~
execute if score out_0 du_data matches 8 run tp @s ~ ~ ~ ~1.6 ~
