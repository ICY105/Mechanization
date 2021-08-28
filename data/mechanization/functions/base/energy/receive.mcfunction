#fill energy up to max buffer & input power
scoreboard players operation $temp_3 mech_data = @s mech_power
execute if score $temp_3 mech_data > $temp_0 mech_data run scoreboard players operation $temp_3 mech_data = $temp_0 mech_data
scoreboard players operation @s mech_power -= $temp_3 mech_data
scoreboard players operation $temp_0 mech_data -= $temp_3 mech_data

execute if score $in_4 mech_data matches 1 run particle flame ~ ~0.8 ~ 0 0 0 0 10 
