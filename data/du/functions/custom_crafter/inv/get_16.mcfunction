#out du_data: value output

scoreboard players set out du_data 0
execute store result score temp_0 du_data run data get block ~ ~ ~ Items[10].Slot
execute if score temp_0 du_data matches 16 store result score out du_data run data get block ~ ~ ~ Items[10].Count

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[11].Slot
execute if score temp_0 du_data matches 16 store result score out du_data run data get block ~ ~ ~ Items[11].Count

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[12].Slot
execute if score temp_0 du_data matches 16 store result score out du_data run data get block ~ ~ ~ Items[12].Count

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[13].Slot
execute if score temp_0 du_data matches 16 store result score out du_data run data get block ~ ~ ~ Items[13].Count

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[14].Slot
execute if score temp_0 du_data matches 16 store result score out du_data run data get block ~ ~ ~ Items[14].Count

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[15].Slot
execute if score temp_0 du_data matches 16 store result score out du_data run data get block ~ ~ ~ Items[15].Count

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[16].Slot
execute if score temp_0 du_data matches 16 store result score out du_data run data get block ~ ~ ~ Items[16].Count



