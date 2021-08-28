#transfers 600 KJ/s
#transfers to 4000 KJ
#range 48 m

scoreboard players set $in_0 mech_data 600
scoreboard players set $in_1 mech_data 4000
scoreboard players set $in_2 mech_data 4000
scoreboard players operation $temp_1 mech_data = @s mech_gridid

#receive energy
scoreboard players operation $temp_0 mech_data = $in_2 mech_data
scoreboard players operation $temp_0 mech_data -= @s mech_power
execute if score $temp_0 mech_data > $in_0 mech_data run scoreboard players operation $temp_0 mech_data = $in_0 mech_data
scoreboard players operation $temp_2 mech_data = $temp_0 mech_data

execute if score $temp_0 mech_data matches 1.. as @e[distance=1..48,tag=mech_transmitter,tag=!mech_energy_relay,sort=nearest] if score @s mech_gridid = $temp_1 mech_data if score @s mech_power matches 1.. if score $temp_0 mech_data matches 1.. at @s run function mechanization:base/energy/receive

scoreboard players operation $temp_2 mech_data -= $temp_0 mech_data
scoreboard players operation @s mech_power += $temp_2 mech_data