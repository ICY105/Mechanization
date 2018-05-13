scoreboard players set temp_0 mech_data -1
execute store result score temp_0 mech_data run data get entity @s SelectedItemSlot

execute store result score temp_1 mech_data run data get entity @s Inventory[0].Slot
execute if score temp_0 mech_data = temp_1 mech_data run function mechanization:gadgets/guns/ads/ads_0

execute store result score temp_1 mech_data run data get entity @s Inventory[1].Slot
execute if score temp_0 mech_data = temp_1 mech_data run function mechanization:gadgets/guns/ads/ads_1

execute store result score temp_1 mech_data run data get entity @s Inventory[2].Slot
execute if score temp_0 mech_data = temp_1 mech_data run function mechanization:gadgets/guns/ads/ads_2

execute store result score temp_1 mech_data run data get entity @s Inventory[3].Slot
execute if score temp_0 mech_data = temp_1 mech_data run function mechanization:gadgets/guns/ads/ads_3

execute store result score temp_1 mech_data run data get entity @s Inventory[4].Slot
execute if score temp_0 mech_data = temp_1 mech_data run function mechanization:gadgets/guns/ads/ads_4

execute store result score temp_1 mech_data run data get entity @s Inventory[5].Slot
execute if score temp_0 mech_data = temp_1 mech_data run function mechanization:gadgets/guns/ads/ads_5

execute store result score temp_1 mech_data run data get entity @s Inventory[6].Slot
execute if score temp_0 mech_data = temp_1 mech_data run function mechanization:gadgets/guns/ads/ads_6

execute store result score temp_1 mech_data run data get entity @s Inventory[7].Slot
execute if score temp_0 mech_data = temp_1 mech_data run function mechanization:gadgets/guns/ads/ads_7

execute store result score temp_1 mech_data run data get entity @s Inventory[8].Slot
execute if score temp_0 mech_data = temp_1 mech_data run function mechanization:gadgets/guns/ads/ads_8
