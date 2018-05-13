
execute store result score temp_0 du_data run data get entity @s Items[6].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[6].Count

execute store result score temp_0 du_data run data get entity @s Items[5].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[5].Count

execute store result score temp_0 du_data run data get entity @s Items[4].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[4].Count
 


