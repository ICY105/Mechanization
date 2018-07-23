execute store result score temp_0 du_data run data get block ~ ~ ~ Items[22].Slot
execute if score temp_0 du_data matches 22 store result block ~ ~ ~ Items[22].Count byte 1 run scoreboard players get in_8 du_data

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[21].Slot
execute if score temp_0 du_data matches 22 store result block ~ ~ ~ Items[21].Count byte 1 run scoreboard players get in_8 du_data
execute if score temp_0 du_data matches 21 store result block ~ ~ ~ Items[21].Count byte 1 run scoreboard players get in_7 du_data

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[20].Slot
execute if score temp_0 du_data matches 22 store result block ~ ~ ~ Items[20].Count byte 1 run scoreboard players get in_8 du_data
execute if score temp_0 du_data matches 21 store result block ~ ~ ~ Items[20].Count byte 1 run scoreboard players get in_7 du_data
execute if score temp_0 du_data matches 20 store result block ~ ~ ~ Items[20].Count byte 1 run scoreboard players get in_6 du_data
