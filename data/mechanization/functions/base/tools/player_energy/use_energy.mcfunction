
#in_0 mech_data: energy to draw
#out_0 mech_data: if energy was successfully drawn

scoreboard players set out_0 mech_data 0

execute if score out_0 mech_data matches 0 store result score temp_0 mech_data run data get entity @s Inventory[0].tag.Energy
execute if score out_0 mech_data matches 0 if score temp_0 mech_data > in_0 mech_data run function mechanization:base/tools/player_energy/draw_energy_0

execute if score out_0 mech_data matches 0 store result score temp_0 mech_data run data get entity @s Inventory[1].tag.Energy
execute if score out_0 mech_data matches 0 if score temp_0 mech_data > in_0 mech_data run function mechanization:base/tools/player_energy/draw_energy_1

execute if score out_0 mech_data matches 0 store result score temp_0 mech_data run data get entity @s Inventory[2].tag.Energy
execute if score out_0 mech_data matches 0 if score temp_0 mech_data > in_0 mech_data run function mechanization:base/tools/player_energy/draw_energy_2

execute if score out_0 mech_data matches 0 store result score temp_0 mech_data run data get entity @s Inventory[3].tag.Energy
execute if score out_0 mech_data matches 0 if score temp_0 mech_data > in_0 mech_data run function mechanization:base/tools/player_energy/draw_energy_3

execute if score out_0 mech_data matches 0 store result score temp_0 mech_data run data get entity @s Inventory[4].tag.Energy
execute if score out_0 mech_data matches 0 if score temp_0 mech_data > in_0 mech_data run function mechanization:base/tools/player_energy/draw_energy_4

execute if score out_0 mech_data matches 0 store result score temp_0 mech_data run data get entity @s Inventory[5].tag.Energy
execute if score out_0 mech_data matches 0 if score temp_0 mech_data > in_0 mech_data run function mechanization:base/tools/player_energy/draw_energy_5

execute if score out_0 mech_data matches 0 store result score temp_0 mech_data run data get entity @s Inventory[6].tag.Energy
execute if score out_0 mech_data matches 0 if score temp_0 mech_data > in_0 mech_data run function mechanization:base/tools/player_energy/draw_energy_6

execute if score out_0 mech_data matches 0 store result score temp_0 mech_data run data get entity @s Inventory[7].tag.Energy
execute if score out_0 mech_data matches 0 if score temp_0 mech_data > in_0 mech_data run function mechanization:base/tools/player_energy/draw_energy_7

execute if score out_0 mech_data matches 0 store result score temp_0 mech_data run data get entity @s Inventory[8].tag.Energy
execute if score out_0 mech_data matches 0 if score temp_0 mech_data > in_0 mech_data run function mechanization:base/tools/player_energy/draw_energy_8

