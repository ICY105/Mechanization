#transfers 600 KJ/s
#transfers to 6000 KJ
#range 48 m

scoreboard players set in_0 mech_data 600
scoreboard players set in_1 mech_data 4000
scoreboard players set in_2 mech_data 4000
scoreboard players operation temp_1 mech_data = @s mech_gridid

#send energy
scoreboard players operation temp_0 mech_data = in_0 mech_data
execute if score @s mech_power < temp_0 mech_data run scoreboard players operation temp_0 mech_data = @s mech_power
scoreboard players operation temp_2 mech_data = temp_0 mech_data

execute if score temp_0 mech_data matches 1.. as @e[distance=1..48,type=minecraft:item_frame,tag=mech_receiver,tag=!mech_energy_relay,sort=nearest] if score @s mech_gridid = temp_1 mech_data if score @s mech_power < in_1 mech_data if score temp_0 mech_data matches 1.. at @s run function mechanization:base/energy/transmit

scoreboard players operation temp_2 mech_data -= temp_0 mech_data
scoreboard players operation @s mech_power -= temp_2 mech_data