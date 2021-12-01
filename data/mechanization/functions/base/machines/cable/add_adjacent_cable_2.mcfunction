
execute if score $in_0 mechanization.data matches 0 run scoreboard players add @s mechanization.data 2
execute if score $in_0 mechanization.data matches 1 run scoreboard players add @s mechanization.data 1
execute if score $in_0 mechanization.data matches 2 run scoreboard players add @s mechanization.data 8
execute if score $in_0 mechanization.data matches 3 run scoreboard players add @s mechanization.data 4
execute if score $in_0 mechanization.data matches 4 run scoreboard players add @s mechanization.data 32
execute if score $in_0 mechanization.data matches 5 run scoreboard players add @s mechanization.data 16

scoreboard players set $temp_0 mechanization.data 6421000
scoreboard players operation $temp_0 mechanization.data += @s mech_data
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_0 mech_data

execute if score $temp_1 mechanization.data matches 1.. run scoreboard players operation $predicate mechanization.data = @s mech_gridid
execute if score $temp_1 mechanization.data matches 1.. as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid] run scoreboard players operation @s mechanization.network_id = $temp_1 mech_data
execute if score $temp_1 mechanization.data matches 0 run scoreboard players operation $temp_1 mechanization.data = @s mech_gridid
