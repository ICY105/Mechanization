
#simple energy compat construct
execute if score $energy_flux.enabled mech_data matches 1 if entity @s[tag=EF_Use] run scoreboard players operation @s mech_power = @s EF_kJ

#execute if available grid energy > 0
execute if score @s mech_power matches 1.. if score @s mechanization.grid_energy matches 1.. run function mechanization:base/energy/send_power_2

#simple energy compat destruct
execute if score $energy_flux.enabled mech_data matches 1 if entity @s[tag=EF_Use] run scoreboard players operation @s EF_kJ = @s mech_power
execute if score $energy_flux.enabled mech_data matches 1 if entity @s[tag=EF_Use] run scoreboard players set @s mech_power 0
