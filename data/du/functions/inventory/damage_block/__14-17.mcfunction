
execute store result score temp_0 du_data run data get entity @s Items[17].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[17].tag.Damage

execute store result score temp_0 du_data run data get entity @s Items[16].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[16].tag.Damage

execute store result score temp_0 du_data run data get entity @s Items[15].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[15].tag.Damage

execute store result score temp_0 du_data run data get entity @s Items[14].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[14].tag.Damage
 


