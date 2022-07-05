
execute if score $in_0 mechanization.data matches 0 run scoreboard players remove @s mechanization.data 1
execute if score $in_0 mechanization.data matches 1 run scoreboard players remove @s mechanization.data 2
execute if score $in_0 mechanization.data matches 2 run scoreboard players remove @s mechanization.data 4
execute if score $in_0 mechanization.data matches 3 run scoreboard players remove @s mechanization.data 8
execute if score $in_0 mechanization.data matches 4 run scoreboard players remove @s mechanization.data 16
execute if score $in_0 mechanization.data matches 5 run scoreboard players remove @s mechanization.data 32

scoreboard players set $temp_0 mechanization.data 6421000
scoreboard players operation $temp_0 mechanization.data += @s mechanization.data
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_0 mechanization.data

tag @s remove mechanization.pipe.output

scoreboard players set $temp_0 mechanization.data 0
execute as @e[type=#mechanization:valid_block_entities,tag=mechanization.liquid.receive,tag=!mechanization.temp,distance=0.5..1.3] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes_dest_2
execute if score $temp_0 mechanization.data matches 1 run tag @s add mechanization.pipe.output
