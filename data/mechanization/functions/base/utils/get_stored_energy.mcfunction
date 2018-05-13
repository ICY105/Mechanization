scoreboard players set in_0 mech_data 0
scoreboard players set out_0 mech_data 0
scoreboard players set temp_0 mech_data 0

execute store result score in_0 mech_data run data get entity @s SelectedItemSlot

execute store result score temp_0 mech_data run data get entity @s Inventory[8].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score out_0 mech_data run data get entity @s Inventory[8].tag.mech_energy

execute store result score temp_0 mech_data run data get entity @s Inventory[7].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score out_0 mech_data run data get entity @s Inventory[7].tag.mech_energy

execute store result score temp_0 mech_data run data get entity @s Inventory[6].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score out_0 mech_data run data get entity @s Inventory[6].tag.mech_energy

execute store result score temp_0 mech_data run data get entity @s Inventory[5].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score out_0 mech_data run data get entity @s Inventory[5].tag.mech_energy

execute store result score temp_0 mech_data run data get entity @s Inventory[4].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score out_0 mech_data run data get entity @s Inventory[4].tag.mech_energy

execute store result score temp_0 mech_data run data get entity @s Inventory[3].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score out_0 mech_data run data get entity @s Inventory[3].tag.mech_energy

execute store result score temp_0 mech_data run data get entity @s Inventory[2].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score out_0 mech_data run data get entity @s Inventory[2].tag.mech_energy

execute store result score temp_0 mech_data run data get entity @s Inventory[1].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score out_0 mech_data run data get entity @s Inventory[1].tag.mech_energy

execute store result score temp_0 mech_data run data get entity @s Inventory[0].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score out_0 mech_data run data get entity @s Inventory[0].tag.mech_energy
