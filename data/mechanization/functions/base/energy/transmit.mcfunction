#find room left in buffer
scoreboard players operation temp_3 mech_data = in_1 mech_data
scoreboard players operation temp_3 mech_data -= @s mech_power

#fill energy up to max buffer & input power
execute if score temp_3 mech_data > temp_0 mech_data run scoreboard players operation temp_3 mech_data = temp_0 mech_data
scoreboard players operation @s mech_power += temp_3 mech_data
scoreboard players operation temp_0 mech_data -= temp_3 mech_data

playsound mechanization:base.energy_transfer block @a ~ ~ ~ 0.1 1.0
particle flame ~ ~0.8 ~ 0 0 0 0 10 
