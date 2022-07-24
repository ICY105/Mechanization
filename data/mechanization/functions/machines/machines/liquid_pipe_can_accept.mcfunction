
execute if entity @s[tag=mechanization.liquid_tank] if score $in_0 mechanization.data matches 2..5 run scoreboard players set $out_0 mechanization.data 1
execute if entity @s[tag=mechanization.steam_generator] if score $in_0 mechanization.data matches 2..5 run scoreboard players set $out_0 mechanization.data 1
execute if entity @s[tag=mechanization.alloy_furnace] if score $in_0 mechanization.data matches 2..5 run scoreboard players set $out_0 mechanization.data 1
execute if entity @s[tag=mechanization.casting_basin] run scoreboard players set $out_0 mechanization.data 1
execute if entity @s[tag=mechanization.thermoelectric_generator] run scoreboard players set $out_0 mechanization.data 1
execute if entity @s[tag=mechanization.reformer] run scoreboard players set $out_0 mechanization.data 1
execute if entity @s[tag=mechanization.enchanting_station] run scoreboard players set $out_0 mechanization.data 1
