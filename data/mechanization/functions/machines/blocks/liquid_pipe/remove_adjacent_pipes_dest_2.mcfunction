
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 0
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 1
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 2
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 3
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 4
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 5

scoreboard players set $out_0 mechanization.data 0
function #mechanization:liquid_pipe_can_accept
execute if score $out_0 mechanization.data matches 1 run scoreboard players set $temp_0 mechanization.data 1
