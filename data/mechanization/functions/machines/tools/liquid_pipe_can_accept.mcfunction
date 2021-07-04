
execute if entity @s[tag=mech_liquid_tank] if score $in_0 mech_data matches 2..5 run scoreboard players set $out_0 mech_data 1
execute if entity @s[tag=mech_steam_generator] if score $in_0 mech_data matches 2..5 run scoreboard players set $out_0 mech_data 1
execute if entity @s[tag=mech_alloy_furnace] if score $in_0 mech_data matches 2..5 run scoreboard players set $out_0 mech_data 1
execute if entity @s[tag=mech_casting_basin] run scoreboard players set $out_0 mech_data 1
execute if entity @s[tag=mech_thermoelectric_generator] run scoreboard players set $out_0 mech_data 1
