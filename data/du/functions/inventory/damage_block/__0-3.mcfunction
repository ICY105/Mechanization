
execute store result score temp_0 du_data run data get entity @s Items[3].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[3].tag.Damage

execute store result score temp_0 du_data run data get entity @s Items[2].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[2].tag.Damage

execute store result score temp_0 du_data run data get entity @s Items[1].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[1].tag.Damage

execute store result score temp_0 du_data run data get entity @s Items[0].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get block ~ ~ ~ Items[0].tag.Damage
 


