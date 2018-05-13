
execute store result score temp_0 du_data run data get entity @s Items[26].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[26].tag.Damage

execute store result score temp_0 du_data run data get entity @s Items[25].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[25].tag.Damage

execute store result score temp_0 du_data run data get entity @s Items[24].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[24].tag.Damage
 


