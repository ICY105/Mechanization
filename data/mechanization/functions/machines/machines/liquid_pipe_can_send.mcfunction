
execute if entity @s[tag=mechanization.liquid_tank] if score $in_0 mechanization.data matches 0..1 run scoreboard players set $out_0 mechanization.data 1
execute if entity @s[tag=mechanization.steam_generator] if score $in_0 mechanization.data matches 0..1 run scoreboard players set $out_0 mechanization.data 1
execute if entity @s[tag=mechanization.alloy_furnace] if score $in_0 mechanization.data matches 0..1 run scoreboard players set $out_0 mechanization.data 1
execute if entity @s[tag=mechanization.arc_furnace] run scoreboard players set $out_0 mechanization.data 1
execute if entity @s[tag=mechanization.liquid_accumulator] run scoreboard players set $out_0 mechanization.data 1
execute if entity @s[tag=mechanization.mob_grinder] if score $in_0 mechanization.data matches 0 run scoreboard players set $out_0 mechanization.data 1
