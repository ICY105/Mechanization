
#in_0 mech_data: max power transfer
#in_1 mech_data: max output buffer
#in_2 mech_data: max battery energy
#in_3 mech_data: range (12|16|24)

#setup
scoreboard players operation temp_1 mech_data = @s mech_gridid

#receive energy
scoreboard players operation temp_0 mech_data = in_2 mech_data
scoreboard players operation temp_0 mech_data -= @s mech_power
execute if score temp_0 mech_data > in_0 mech_data run scoreboard players operation temp_0 mech_data = in_0 mech_data
scoreboard players operation temp_2 mech_data = temp_0 mech_data

execute if score in_3 mech_data matches 12 if score temp_0 mech_data matches 1.. as @e[distance=..12,tag=mech_transmitter,sort=nearest] if score @s mech_gridid = temp_1 mech_data if score @s mech_power matches 1.. if score temp_0 mech_data matches 1.. at @s run function mechanization:base/energy/receive
execute if score in_3 mech_data matches 16 if score temp_0 mech_data matches 1.. as @e[distance=..16,tag=mech_transmitter,sort=nearest] if score @s mech_gridid = temp_1 mech_data if score @s mech_power matches 1.. if score temp_0 mech_data matches 1.. at @s run function mechanization:base/energy/receive
execute if score in_3 mech_data matches 24 if score temp_0 mech_data matches 1.. as @e[distance=..24,tag=mech_transmitter,sort=nearest] if score @s mech_gridid = temp_1 mech_data if score @s mech_power matches 1.. if score temp_0 mech_data matches 1.. at @s run function mechanization:base/energy/receive

scoreboard players operation temp_2 mech_data -= temp_0 mech_data
scoreboard players operation @s mech_power += temp_2 mech_data

#send energy
scoreboard players operation temp_0 mech_data = in_0 mech_data
execute if score @s mech_power < temp_0 mech_data run scoreboard players operation temp_0 mech_data = @s mech_power
scoreboard players operation temp_2 mech_data = temp_0 mech_data

execute if score in_3 mech_data matches 12 if score temp_0 mech_data matches 1.. as @e[distance=..12,tag=mech_receiver,sort=nearest] if score @s mech_gridid = temp_1 mech_data if score @s mech_power < in_1 mech_data if score temp_0 mech_data matches 1.. at @s run function mechanization:base/energy/transmit
execute if score in_3 mech_data matches 16 if score temp_0 mech_data matches 1.. as @e[distance=..16,tag=mech_receiver,sort=nearest] if score @s mech_gridid = temp_1 mech_data if score @s mech_power < in_1 mech_data if score temp_0 mech_data matches 1.. at @s run function mechanization:base/energy/transmit
execute if score in_3 mech_data matches 24 if score temp_0 mech_data matches 1.. as @e[distance=..24,tag=mech_receiver,sort=nearest] if score @s mech_gridid = temp_1 mech_data if score @s mech_power < in_1 mech_data if score temp_0 mech_data matches 1.. at @s run function mechanization:base/energy/transmit

scoreboard players operation temp_2 mech_data -= temp_0 mech_data
scoreboard players operation @s mech_power -= temp_2 mech_data
