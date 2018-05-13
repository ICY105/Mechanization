
execute store result score temp_0 du_data run data get entity @s Items[10].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[10].Count

execute store result score temp_0 du_data run data get entity @s Items[9].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[9].Count

execute store result score temp_0 du_data run data get entity @s Items[8].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[8].Count

execute store result score temp_0 du_data run data get entity @s Items[7].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[7].Count
 


