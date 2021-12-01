
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 2
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 1
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 1
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 2
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 4
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 8
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 8
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 4
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 16
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 32
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 32
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 16

scoreboard players set $temp_2 mechanization.data 6421000
scoreboard players operation $temp_2 mechanization.data += @s mech_data
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_2 mech_data


execute if score @s mechanization.network_id matches 0 run scoreboard players operation @s mechanization.network_id = $uuid.incr du_uuid
execute if score @s mechanization.network_id matches 0 run scoreboard players add $uuid.incr du_uuid 1
execute if score $temp_1 mechanization.data matches 0.. run scoreboard players operation $predicate mechanization.data = @s mech_gridid
execute if score $temp_1 mechanization.data matches 0.. as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid] run scoreboard players operation @s mechanization.network_id = $temp_1 mech_data
execute if score $temp_1 mechanization.data matches -1 run scoreboard players operation $temp_1 mechanization.data = @s mech_gridid
