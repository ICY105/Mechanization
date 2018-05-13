
execute store result score temp_0 du_data run data get entity @s Inventory[5].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get entity @s Inventory[5].Count

execute store result score temp_0 du_data run data get entity @s Inventory[4].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get entity @s Inventory[4].Count

execute store result score temp_0 du_data run data get entity @s Inventory[3].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get entity @s Inventory[3].Count

execute store result score temp_0 du_data run data get entity @s Inventory[2].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get entity @s Inventory[2].Count

execute store result score temp_0 du_data run data get entity @s Inventory[1].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get entity @s Inventory[1].Count

execute store result score temp_0 du_data run data get entity @s Inventory[0].Slot
execute if score temp_0 du_data = in_0 du_data store result score out_0 du_data run data get entity @s Inventory[0].Count
