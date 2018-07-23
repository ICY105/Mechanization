execute store result score temp_0 du_data run data get block ~ ~ ~ Items[2].Slot
execute store result score temp_1 du_data run data get block ~ ~ ~ Items[2].Count
execute if score temp_0 du_data matches 2 run scoreboard players operation in_0 du_data = temp_1 du_data
execute if score temp_0 du_data matches 3 run scoreboard players operation in_1 du_data = temp_1 du_data
execute if score temp_0 du_data matches 4 run scoreboard players operation in_2 du_data = temp_1 du_data

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[3].Slot
execute store result score temp_1 du_data run data get block ~ ~ ~ Items[3].Count
execute if score temp_0 du_data matches 3 run scoreboard players operation in_1 du_data = temp_1 du_data
execute if score temp_0 du_data matches 4 run scoreboard players operation in_2 du_data = temp_1 du_data

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[4].Slot
execute store result score temp_1 du_data run data get block ~ ~ ~ Items[4].Count
execute if score temp_0 du_data matches 4 run scoreboard players operation in_2 du_data = temp_1 du_data



