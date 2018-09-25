scoreboard players operation @s du_move_x = temp_0 du_data
scoreboard players set @s du_data 0

scoreboard players set temp_0 du_data 0
execute if score @s du_move_x = @s du_move_y run scoreboard players set temp_0 du_data 1
execute if score @s du_move_y matches 0 unless block ~ ~ ~ furnace{Items:[{Slot:2b}]} run scoreboard players set temp_0 du_data 1

execute store result score temp_1 du_data unless block ~ ~ ~ furnace{Items:[{Slot:1b}]} run data get block ~ ~ ~ Items[1].Count
execute store result score temp_1 du_data if block ~ ~ ~ furnace{Items:[{Slot:1b}]} run data get block ~ ~ ~ Items[2].Count
execute if score temp_0 du_data matches 1 if score temp_1 du_data matches 1 run function du:custom_furnace/check_out_stackable
execute if score temp_0 du_data matches 1 if score temp_1 du_data matches 16 run function du:custom_furnace/check_out_stackable_16
execute if score temp_0 du_data matches 1 if score temp_1 du_data matches 64 run scoreboard players set @s du_move_y -1
execute if score temp_0 du_data matches 1 if score temp_1 du_data matches 64 run scoreboard players set temp_0 du_data 0

execute if score temp_0 du_data matches 1 if block ~ ~ ~ furnace{BurnTime:0s,Items:[{Slot:1b}]} run function du:custom_furnace/fuel
execute if score temp_0 du_data matches 1 unless block ~ ~ ~ furnace{BurnTime:0s} run tag @s add du_fur_active
