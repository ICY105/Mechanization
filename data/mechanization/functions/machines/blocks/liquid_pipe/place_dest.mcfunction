
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 0
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 1
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 2
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 3
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 4
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 5

scoreboard players set $out_0 mechanization.data 0
function #mechanization:liquid_pipe_can_accept
execute if score $out_0 mechanization.data matches 1 run scoreboard players set $temp_2 mechanization.data 1
execute if score $out_0 mechanization.data matches 1 run tag @s add mechanization.temp

scoreboard players set $out_0 mechanization.data 0
execute if entity @s[tag=mechanization.liquid.send] run function #mechanization:liquid_pipe_can_send
execute if entity @s[tag=mechanization.liquid.send] if score $out_0 mechanization.data matches 1 run scoreboard players set $temp_3 mechanization.data 1
execute if score $out_0 mechanization.data matches 1 run tag @s add mechanization.temp

execute if entity @s[tag=mechanization.temp] positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 1
execute if entity @s[tag=mechanization.temp] positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 2
execute if entity @s[tag=mechanization.temp] positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 8
execute if entity @s[tag=mechanization.temp] positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 4
execute if entity @s[tag=mechanization.temp] positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 32
execute if entity @s[tag=mechanization.temp] positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 16

tag @s remove mechanization.temp
