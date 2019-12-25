#vertical
scoreboard players operation $math.in_0 du_data = temp_1 mech_data
function du:math/random
execute if score out_0 du_data matches 1 run tp @s ~ ~ ~ ~ ~-2
execute if score out_0 du_data matches 2 run tp @s ~ ~ ~ ~ ~-3
execute if score out_0 du_data matches 3 run tp @s ~ ~ ~ ~ ~-4
execute if score out_0 du_data matches 4 run tp @s ~ ~ ~ ~ ~-5
execute if score out_0 du_data matches 5 run tp @s ~ ~ ~ ~ ~-6
execute if score out_0 du_data matches 6 run tp @s ~ ~ ~ ~ ~-7
execute if score out_0 du_data matches 7 run tp @s ~ ~ ~ ~ ~-8
execute if score out_0 du_data matches 8 run tp @s ~ ~ ~ ~ ~-9

#horizontal
scoreboard players operation $math.in_0 du_data = temp_2 mech_data
scoreboard players set temp_0 du_data 2
scoreboard players operation $math.in_0 du_data *= temp_0 du_data
function du:math/random
scoreboard players operation $math.out_0 du_data -= temp_2 mech_data

execute if score $math.out_0 du_data matches -8 run tp @s ~ ~ ~ ~-4.0 ~
execute if score $math.out_0 du_data matches -7 run tp @s ~ ~ ~ ~-3.5 ~
execute if score $math.out_0 du_data matches -6 run tp @s ~ ~ ~ ~-3.0 ~
execute if score $math.out_0 du_data matches -5 run tp @s ~ ~ ~ ~-2.5 ~
execute if score $math.out_0 du_data matches -4 run tp @s ~ ~ ~ ~-2.0 ~
execute if score $math.out_0 du_data matches -3 run tp @s ~ ~ ~ ~-1.5 ~
execute if score $math.out_0 du_data matches -2 run tp @s ~ ~ ~ ~-1.0 ~
execute if score $math.out_0 du_data matches -1 run tp @s ~ ~ ~ ~-0.5 ~

execute if score $math.out_0 du_data matches 1 run tp @s ~ ~ ~ ~0.5 ~
execute if score $math.out_0 du_data matches 2 run tp @s ~ ~ ~ ~1.0 ~
execute if score $math.out_0 du_data matches 3 run tp @s ~ ~ ~ ~1.5 ~
execute if score $math.out_0 du_data matches 4 run tp @s ~ ~ ~ ~2.0 ~
execute if score $math.out_0 du_data matches 5 run tp @s ~ ~ ~ ~2.5 ~
execute if score $math.out_0 du_data matches 6 run tp @s ~ ~ ~ ~3.0 ~
execute if score $math.out_0 du_data matches 7 run tp @s ~ ~ ~ ~3.5 ~
execute if score $math.out_0 du_data matches 8 run tp @s ~ ~ ~ ~4.0 ~
