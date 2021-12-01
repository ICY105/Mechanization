
execute if score $in_0 mechanization.data matches 0 run scoreboard players add @s mechanization.data 1
execute if score $in_0 mechanization.data matches 1 run scoreboard players add @s mechanization.data 2
execute if score $in_0 mechanization.data matches 2 run scoreboard players add @s mechanization.data 4
execute if score $in_0 mechanization.data matches 3 run scoreboard players add @s mechanization.data 8
execute if score $in_0 mechanization.data matches 4 run scoreboard players add @s mechanization.data 16
execute if score $in_0 mechanization.data matches 5 run scoreboard players add @s mechanization.data 32

scoreboard players set $temp_0 mechanization.data 6421000
scoreboard players operation $temp_0 mechanization.data += @s mech_data
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_0 mech_data

tag @s add mech_pipe_output
