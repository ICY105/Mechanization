
scoreboard players set temp_0 du_data 16

execute store result score temp_1 du_data run data get entity @s Pos[0]
scoreboard players operation temp_1 du_data %= temp_0 du_data

execute store result score temp_2 du_data run data get entity @s Pos[2]
scoreboard players operation temp_2 du_data %= temp_0 du_data

execute if score temp_1 du_data matches ..-1 run scoreboard players add temp_1 du_data 16
execute if score temp_2 du_data matches ..-1 run scoreboard players add temp_2 du_data 16

execute if score temp_1 du_data matches 0 align xyz positioned ~0.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 1 align xyz positioned ~-0.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 2 align xyz positioned ~-1.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 3 align xyz positioned ~-2.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 4 align xyz positioned ~-3.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 5 align xyz positioned ~-4.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 6 align xyz positioned ~-5.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 7 align xyz positioned ~-6.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 8 align xyz positioned ~-7.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 9 align xyz positioned ~-8.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 10 align xyz positioned ~-9.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 11 align xyz positioned ~-10.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 12 align xyz positioned ~-11.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 13 align xyz positioned ~-12.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 14 align xyz positioned ~-13.5 ~ ~0.5 run function du:worldgen/positioned
execute if score temp_1 du_data matches 15 align xyz positioned ~-14.5 ~ ~0.5 run function du:worldgen/positioned