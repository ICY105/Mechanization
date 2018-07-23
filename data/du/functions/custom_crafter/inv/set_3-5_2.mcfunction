execute store result score temp_0 du_data run data get block ~ ~ ~ Items[12].Slot
execute if score temp_0 du_data matches 13 store result block ~ ~ ~ Items[12].Count byte 1 run scoreboard players get in_5 du_data

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[11].Slot
execute if score temp_0 du_data matches 13 store result block ~ ~ ~ Items[11].Count byte 1 run scoreboard players get in_5 du_data
execute if score temp_0 du_data matches 12 store result block ~ ~ ~ Items[11].Count byte 1 run scoreboard players get in_4 du_data

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[10].Slot
execute if score temp_0 du_data matches 13 store result block ~ ~ ~ Items[10].Count byte 1 run scoreboard players get in_5 du_data
execute if score temp_0 du_data matches 12 store result block ~ ~ ~ Items[10].Count byte 1 run scoreboard players get in_4 du_data
execute if score temp_0 du_data matches 11 store result block ~ ~ ~ Items[10].Count byte 1 run scoreboard players get in_3 du_data
