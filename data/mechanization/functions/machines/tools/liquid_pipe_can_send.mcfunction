
execute if entity @s[tag=mech_liquid_tank] if score $in_0 mech_data matches 0..1 run scoreboard players set $out_0 mech_data 1
execute if entity @s[tag=mech_steam_generator] if score $in_0 mech_data matches 0..1 run scoreboard players set $out_0 mech_data 1
execute if entity @s[tag=mech_alloy_furnace] if score $in_0 mech_data matches 0..1 run scoreboard players set $out_0 mech_data 1
execute if entity @s[tag=mech_arc_furnace] run scoreboard players set $out_0 mech_data 1
execute if entity @s[tag=mech_liquid_accumulator] run scoreboard players set $out_0 mech_data 1
