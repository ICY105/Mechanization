
execute if score $in_0 mech_data matches 0 run scoreboard players remove @s mech_data 1
execute if score $in_0 mech_data matches 1 run scoreboard players remove @s mech_data 2
execute if score $in_0 mech_data matches 2 run scoreboard players remove @s mech_data 4
execute if score $in_0 mech_data matches 3 run scoreboard players remove @s mech_data 8
execute if score $in_0 mech_data matches 4 run scoreboard players remove @s mech_data 16
execute if score $in_0 mech_data matches 5 run scoreboard players remove @s mech_data 32

scoreboard players set $temp_0 mech_data 6422900
scoreboard players operation $temp_0 mech_data += @s mech_data
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_0 mech_data

tag @s remove mech_pipe_output

scoreboard players set $temp_0 mech_data 0
execute as @e[type=#mechanization:valid_block_entity,tag=mech_liquid_dest,tag=!mech_temp,distance=0.5..1.3] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes_dest_2
execute if score $temp_0 mech_data matches 1 run tag @s add mech_pipe_output
