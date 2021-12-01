
#find if power buffer space or input power is higher
scoreboard players set $temp_0 mechanization.data 2000
execute if entity @s[tag=mech_power_storage] if score @s mechanization.storage_capacity matches 1.. run scoreboard players operation $temp_0 mechanization.data = @s mechanization.storage_capacity
scoreboard players operation $temp_0 mechanization.data -= @s mech_power

execute if score $in_0 mechanization.data >= $temp_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $temp_0 mech_data
execute if score $in_0 mechanization.data < $temp_0 mechanization.data run scoreboard players operation $out_0 mechanization.data = $in_0 mech_data

#add power
scoreboard players operation @s mechanization.stored_energy += $out_0 mech_data

