scoreboard players set temp_0 du_data 0
scoreboard players set temp_1 du_data 0
scoreboard players set out_0 du_data 0

execute store result score temp_0 du_data run data get entity @s SelectedItemSlot

execute store result score temp_1 du_data run data get entity @s Inventory[8].Slot
execute if score temp_1 du_data = temp_0 du_data store result score out_0 du_data run data get entity @s Inventory[8].tag.du_block_id

execute store result score temp_1 du_data run data get entity @s Inventory[7].Slot
execute if score temp_1 du_data = temp_0 du_data store result score out_0 du_data run data get entity @s Inventory[7].tag.du_block_id

execute store result score temp_1 du_data run data get entity @s Inventory[6].Slot
execute if score temp_1 du_data = temp_0 du_data store result score out_0 du_data run data get entity @s Inventory[6].tag.du_block_id

execute store result score temp_1 du_data run data get entity @s Inventory[5].Slot
execute if score temp_1 du_data = temp_0 du_data store result score out_0 du_data run data get entity @s Inventory[5].tag.du_block_id

execute store result score temp_1 du_data run data get entity @s Inventory[4].Slot
execute if score temp_1 du_data = temp_0 du_data store result score out_0 du_data run data get entity @s Inventory[4].tag.du_block_id

execute store result score temp_1 du_data run data get entity @s Inventory[3].Slot
execute if score temp_1 du_data = temp_0 du_data store result score out_0 du_data run data get entity @s Inventory[3].tag.du_block_id

execute store result score temp_1 du_data run data get entity @s Inventory[2].Slot
execute if score temp_1 du_data = temp_0 du_data store result score out_0 du_data run data get entity @s Inventory[2].tag.du_block_id

execute store result score temp_1 du_data run data get entity @s Inventory[1].Slot
execute if score temp_1 du_data = temp_0 du_data store result score out_0 du_data run data get entity @s Inventory[1].tag.du_block_id

execute store result score temp_1 du_data run data get entity @s Inventory[0].Slot
execute if score temp_1 du_data = temp_0 du_data store result score out_0 du_data run data get entity @s Inventory[0].tag.du_block_id
