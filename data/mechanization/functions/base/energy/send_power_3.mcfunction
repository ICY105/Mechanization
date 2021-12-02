
#simple energy compat construct
execute if score $energy_flux.enabled mech_data matches 1 if entity @s[tag=EF_Use] run scoreboard players operation @s mech_power = @s EF_kJ

#find if power buffer space or input power is higher
scoreboard players set $temp_0 mech_data 2000
execute if score @s mechanization.storage_capacity matches 1.. run scoreboard players operation $temp_0 mech_data = @s mechanization.storage_capacity
scoreboard players operation $temp_0 mech_data -= @s mech_power

execute if score $in_0 mech_data >= $temp_0 mech_data run scoreboard players operation $out_0 mech_data = $temp_0 mech_data
execute if score $in_0 mech_data < $temp_0 mech_data run scoreboard players operation $out_0 mech_data = $in_0 mech_data

#add power
scoreboard players operation @s mech_power += $out_0 mech_data

#simple energy compat destruct
execute if score $energy_flux.enabled mech_data matches 1 if entity @s[tag=EF_Use] run scoreboard players operation @s EF_kJ = @s mech_power
execute if score $energy_flux.enabled mech_data matches 1 if entity @s[tag=EF_Use] run scoreboard players set @s mech_power 0

