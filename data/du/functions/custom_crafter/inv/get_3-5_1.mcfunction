execute store result score temp_0 du_data run data get block ~ ~ ~ Items[9].Slot
execute store result score temp_1 du_data run data get block ~ ~ ~ Items[9].Count
execute if score temp_0 du_data matches 11 run scoreboard players operation in_3 du_data = temp_1 du_data
execute if score temp_0 du_data matches 12 run scoreboard players operation in_4 du_data = temp_1 du_data
execute if score temp_0 du_data matches 13 run scoreboard players operation in_5 du_data = temp_1 du_data

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[10].Slot
execute store result score temp_1 du_data run data get block ~ ~ ~ Items[10].Count
execute if score temp_0 du_data matches 12 run scoreboard players operation in_4 du_data = temp_1 du_data
execute if score temp_0 du_data matches 13 run scoreboard players operation in_5 du_data = temp_1 du_data

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[11].Slot
execute store result score temp_1 du_data run data get block ~ ~ ~ Items[11].Count
execute if score temp_0 du_data matches 13 run scoreboard players operation in_5 du_data = temp_1 du_data
