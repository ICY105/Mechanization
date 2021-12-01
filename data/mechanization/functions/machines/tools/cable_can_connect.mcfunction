
execute if score $in_0 mechanization.data matches 1 if entity @s[tag=mech_solar_panel] run scoreboard players set $out_0 mechanization.data 0
execute if score $in_0 mechanization.data matches 2..5 if entity @s[tag=mech_auto_farm] run scoreboard players set $out_0 mechanization.data 0
