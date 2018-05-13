
execute store result score temp_0 du_data run data get entity @s Items[13].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[13].Count

execute store result score temp_0 du_data run data get entity @s Items[12].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[12].Count

execute store result score temp_0 du_data run data get entity @s Items[11].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[11].Count
 


