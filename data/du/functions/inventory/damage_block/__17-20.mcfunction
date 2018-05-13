
execute store result score temp_0 du_data run data get entity @s Items[20].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[20].tag.Damage

execute store result score temp_0 du_data run data get entity @s Items[19].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[19].tag.Damage

execute store result score temp_0 du_data run data get entity @s Items[18].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[18].tag.Damage

execute store result score temp_0 du_data run data get entity @s Items[17].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[17].tag.Damage
 


