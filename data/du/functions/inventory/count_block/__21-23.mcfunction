
execute store result score temp_0 du_data run data get entity @s Items[23].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[23].Count

execute store result score temp_0 du_data run data get entity @s Items[22].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[22].Count

execute store result score temp_0 du_data run data get entity @s Items[21].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[21].Count
 


