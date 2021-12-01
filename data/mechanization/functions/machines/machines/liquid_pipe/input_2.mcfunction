
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mech_data 0
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mech_data 1
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players set $in_0 mech_data 2
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players set $in_0 mech_data 3
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mech_data 4
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players set $in_0 mech_data 5

scoreboard players set $out_0 mech_data 0
function #mechanization:liquid_pipe_can_send

scoreboard players set $temp_1 mech_data 0
scoreboard players set $out_1 mech_data 0
execute if score $out_0 mech_data matches 1 if score $temp_0 mech_data matches 1.. run scoreboard players set $temp_1 mech_data 1
execute if score $temp_1 mech_data matches 1 run scoreboard players set $in_0 mech_data 0
execute if score $temp_1 mech_data matches 1 run scoreboard players set $out_0 mech_data 0
execute if score $temp_1 mech_data matches 1 run data modify storage du:temp obj set value {}
execute if score $temp_1 mech_data matches 1 run function #mechanization:liquid_send
execute if score $temp_1 mech_data matches 1 if score $out_0 mech_data matches 1.. run scoreboard players set $temp_1 mech_data 2
execute if score $temp_1 mech_data matches 2 run scoreboard players operation $temp_2 mech_data = $out_0 mech_data
execute if score $temp_1 mech_data matches 2 as @e[type=#mechanization:valid_block_entities,tag=mech_pipe_output,predicate=mechanization:matches_uuid,sort=nearest] run function mechanization:machines/machines/liquid_pipe/output
execute if score $temp_1 mech_data matches 2 run scoreboard players operation $in_0 mech_data = $out_1 mech_data
execute if score $temp_1 mech_data matches 2 run data modify storage du:temp obj set value {}
execute if score $temp_1 mech_data matches 2 run function #mechanization:liquid_send
