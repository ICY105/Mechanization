#in_0 mech_data: energy to draw
#out_0 mech_data: if energy was successfully drawn

#take energy
scoreboard players operation temp_0 mech_data = in_0 mech_data

#get equipment
function du:player/inv/get_equipment

#check armor
execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[1].tag.mech_battery.energy
execute if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 1.. run function mechanization:base/energy/player_energy/slot_1

execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[2].tag.mech_battery.energy
execute if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 1.. run function mechanization:base/energy/player_energy/slot_2

execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[3].tag.mech_battery.energy
execute if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 1.. run function mechanization:base/energy/player_energy/slot_3

execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[4].tag.mech_battery.energy
execute if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 1.. run function mechanization:base/energy/player_energy/slot_4

execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[5].tag.mech_battery.energy
execute if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 1.. run function mechanization:base/energy/player_energy/slot_5

#restore equipment
function du:player/inv/restore_equipment

#get hotbar
function du:player/inv/get_hotbar

#check hotbar
execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[0].tag.mech_battery.energy
execute if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 1.. run function mechanization:base/energy/player_energy/slot_0

execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[1].tag.mech_battery.energy
execute if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 1.. run function mechanization:base/energy/player_energy/slot_1

execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[2].tag.mech_battery.energy
execute if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 1.. run function mechanization:base/energy/player_energy/slot_2

execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[3].tag.mech_battery.energy
execute if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 1.. run function mechanization:base/energy/player_energy/slot_3

execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[4].tag.mech_battery.energy
execute if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 1.. run function mechanization:base/energy/player_energy/slot_4

execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[5].tag.mech_battery.energy
execute if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 1.. run function mechanization:base/energy/player_energy/slot_5

execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[6].tag.mech_battery.energy
execute if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 1.. run function mechanization:base/energy/player_energy/slot_6

execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[7].tag.mech_battery.energy
execute if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 1.. run function mechanization:base/energy/player_energy/slot_7

execute store result score temp_1 mech_data run data get block -29999999 0 1601 Items[8].tag.mech_battery.energy
execute if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 1.. run function mechanization:base/energy/player_energy/slot_8

#restore hotbar
function du:player/inv/restore_hotbar

#set output
scoreboard players set out_0 mech_data 0
execute if score temp_0 mech_data matches 0 run scoreboard players set out_0 mech_data 1