tag @s remove mech_manual_open

execute store result score temp_0 mech_data run data get entity @s Inventory[0].tag.manual.page
execute if score temp_0 mech_data matches 1.. store result score in_0 mech_data run data get entity @s Inventory[0].Slot 
execute if score temp_0 mech_data matches 1.. run function mechanization:base/tools/manual/close/close

execute store result score temp_0 mech_data run data get entity @s Inventory[1].tag.manual.page
execute if score temp_0 mech_data matches 1.. store result score in_0 mech_data run data get entity @s Inventory[1].Slot 
execute if score temp_0 mech_data matches 1.. run function mechanization:base/tools/manual/close/close

execute store result score temp_0 mech_data run data get entity @s Inventory[2].tag.manual.page
execute if score temp_0 mech_data matches 1.. store result score in_0 mech_data run data get entity @s Inventory[2].Slot 
execute if score temp_0 mech_data matches 1.. run function mechanization:base/tools/manual/close/close

execute store result score temp_0 mech_data run data get entity @s Inventory[3].tag.manual.page
execute if score temp_0 mech_data matches 1.. store result score in_0 mech_data run data get entity @s Inventory[3].Slot 
execute if score temp_0 mech_data matches 1.. run function mechanization:base/tools/manual/close/close

execute store result score temp_0 mech_data run data get entity @s Inventory[4].tag.manual.page
execute if score temp_0 mech_data matches 1.. store result score in_0 mech_data run data get entity @s Inventory[4].Slot 
execute if score temp_0 mech_data matches 1.. run function mechanization:base/tools/manual/close/close

execute store result score temp_0 mech_data run data get entity @s Inventory[5].tag.manual.page
execute if score temp_0 mech_data matches 1.. store result score in_0 mech_data run data get entity @s Inventory[5].Slot 
execute if score temp_0 mech_data matches 1.. run function mechanization:base/tools/manual/close/close

execute store result score temp_0 mech_data run data get entity @s Inventory[6].tag.manual.page
execute if score temp_0 mech_data matches 1.. store result score in_0 mech_data run data get entity @s Inventory[6].Slot 
execute if score temp_0 mech_data matches 1.. run function mechanization:base/tools/manual/close/close

execute store result score temp_0 mech_data run data get entity @s Inventory[7].tag.manual.page
execute if score temp_0 mech_data matches 1.. store result score in_0 mech_data run data get entity @s Inventory[7].Slot 
execute if score temp_0 mech_data matches 1.. run function mechanization:base/tools/manual/close/close

execute store result score temp_0 mech_data run data get entity @s Inventory[8].tag.manual.page
execute if score temp_0 mech_data matches 1.. store result score in_0 mech_data run data get entity @s Inventory[8].Slot 
execute if score temp_0 mech_data matches 1.. run function mechanization:base/tools/manual/close/close
