execute store result score temp_0 du_data run data get block ~ ~ ~ Items[4].Slot
execute if score temp_0 du_data matches 4 store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players get in_2 du_data

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[3].Slot
execute if score temp_0 du_data matches 4 store result block ~ ~ ~ Items[3].Count byte 1 run scoreboard players get in_2 du_data
execute if score temp_0 du_data matches 3 store result block ~ ~ ~ Items[3].Count byte 1 run scoreboard players get in_1 du_data

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[2].Slot
execute if score temp_0 du_data matches 4 store result block ~ ~ ~ Items[2].Count byte 1 run scoreboard players get in_2 du_data
execute if score temp_0 du_data matches 3 store result block ~ ~ ~ Items[2].Count byte 1 run scoreboard players get in_1 du_data
execute if score temp_0 du_data matches 2 store result block ~ ~ ~ Items[2].Count byte 1 run scoreboard players get in_0 du_data