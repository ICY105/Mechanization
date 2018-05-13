
execute store result score temp_0 du_data run data get entity @s Inventory[10].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get entity @s Inventory[10].tag.Damage

execute store result score temp_0 du_data run data get entity @s Inventory[9].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get entity @s Inventory[9].tag.Damage

execute store result score temp_0 du_data run data get entity @s Inventory[8].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get entity @s Inventory[8].tag.Damage

execute store result score temp_0 du_data run data get entity @s Inventory[7].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get entity @s Inventory[7].tag.Damage

execute store result score temp_0 du_data run data get entity @s Inventory[6].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get entity @s Inventory[6].tag.Damage


