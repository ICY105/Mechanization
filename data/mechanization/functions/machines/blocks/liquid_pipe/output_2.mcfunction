
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 0
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 1
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 2
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 3
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 4
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 5

scoreboard players set $out_0 mechanization.data 0
function #mechanization:liquid_pipe_can_accept

scoreboard players set $temp_3 mechanization.data 0
execute if score $out_0 mechanization.data matches 1 if score $temp_0 mechanization.data matches 1.. if score $temp_2 mechanization.data matches 1.. run scoreboard players set $temp_3 mechanization.data 1
execute if score $temp_3 mechanization.data matches 1 run scoreboard players operation $in_0 mechanization.data = $temp_2 mechanization.data
execute if score $temp_3 mechanization.data matches 1 if score $in_0 mechanization.data > $temp_0 mechanization.data run scoreboard players operation $in_0 mechanization.data = $temp_0 mechanization.data
execute if score $temp_3 mechanization.data matches 1 run scoreboard players set $out_0 mechanization.data 0
execute if score $temp_3 mechanization.data matches 1 run function #mechanization:liquid_accept
execute if score $temp_3 mechanization.data matches 1 if score $out_0 mechanization.data matches 1.. run scoreboard players operation $temp_2 mechanization.data -= $out_0 mechanization.data
execute if score $temp_3 mechanization.data matches 1 if score $out_0 mechanization.data matches 1.. run scoreboard players operation $out_1 mechanization.data += $out_0 mechanization.data
