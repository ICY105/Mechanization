execute store result score temp_0 du_data run data get block ~ ~ ~ Items[15].Slot
execute store result score temp_1 du_data run data get block ~ ~ ~ Items[15].Count
execute if score temp_0 du_data matches 20 run scoreboard players operation in_6 du_data = temp_1 du_data
execute if score temp_0 du_data matches 21 run scoreboard players operation in_7 du_data = temp_1 du_data
execute if score temp_0 du_data matches 22 run scoreboard players operation in_8 du_data = temp_1 du_data

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[16].Slot
execute store result score temp_1 du_data run data get block ~ ~ ~ Items[16].Count
execute if score temp_0 du_data matches 21 run scoreboard players operation in_7 du_data = temp_1 du_data
execute if score temp_0 du_data matches 22 run scoreboard players operation in_8 du_data = temp_1 du_data

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[17].Slot
execute store result score temp_1 du_data run data get block ~ ~ ~ Items[17].Count
execute if score temp_0 du_data matches 22 run scoreboard players operation in_8 du_data = temp_1 du_data



