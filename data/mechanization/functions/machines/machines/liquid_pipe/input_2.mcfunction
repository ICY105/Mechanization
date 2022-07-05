
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 0
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 1
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 2
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 3
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 4
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mechanization.data 5

scoreboard players set $out_0 mechanization.data 0
function #mechanization:liquid_pipe_can_send

scoreboard players set $temp_1 mechanization.data 0
scoreboard players set $out_1 mechanization.data 0
execute if score $out_0 mechanization.data matches 1 if score $temp_0 mechanization.data matches 1.. run scoreboard players set $temp_1 mechanization.data 1
execute if score $temp_1 mechanization.data matches 1 run scoreboard players set $in_0 mechanization.data 0
execute if score $temp_1 mechanization.data matches 1 run scoreboard players set $out_0 mechanization.data 0
execute if score $temp_1 mechanization.data matches 1 run data modify storage mechanization:temp obj set value {}
execute if score $temp_1 mechanization.data matches 1 run function #mechanization:liquid_send
execute if score $temp_1 mechanization.data matches 1 if score $out_0 mechanization.data matches 1.. run scoreboard players set $temp_1 mechanization.data 2
execute if score $temp_1 mechanization.data matches 2 run scoreboard players operation $temp_2 mechanization.data = $out_0 mechanization.data
execute if score $temp_1 mechanization.data matches 2 as @e[type=#mechanization:valid_block_entities,tag=mechanization.pipe.output,predicate=mechanization:matches_uuid,sort=nearest] run function mechanization:machines/machines/liquid_pipe/output
execute if score $temp_1 mechanization.data matches 2 run scoreboard players operation $in_0 mechanization.data = $out_1 mechanization.data
execute if score $temp_1 mechanization.data matches 2 run data modify storage mechanization:temp obj set value {}
execute if score $temp_1 mechanization.data matches 2 run function #mechanization:liquid_send
