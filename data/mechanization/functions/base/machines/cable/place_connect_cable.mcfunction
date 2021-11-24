
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mech_data 2
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players add @s mech_data 1
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mech_data 1
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players add @s mech_data 2
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players add $temp_0 mech_data 4
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players add @s mech_data 8
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players add $temp_0 mech_data 8
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players add @s mech_data 4
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mech_data 32
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add @s mech_data 16
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mech_data 16
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add @s mech_data 32

scoreboard players set $temp_2 mech_data 6421000
scoreboard players operation $temp_2 mech_data += @s mech_data
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_2 mech_data


execute if score @s mech_gridid matches 0 run scoreboard players operation @s mech_gridid = $uuid.incr du_uuid
execute if score @s mech_gridid matches 0 run scoreboard players add $uuid.incr du_uuid 1
execute if score $temp_1 mech_data matches 0.. run scoreboard players operation $predicate mech_data = @s mech_gridid
execute if score $temp_1 mech_data matches 0.. as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid] run scoreboard players operation @s mech_gridid = $temp_1 mech_data
execute if score $temp_1 mech_data matches -1 run scoreboard players operation $temp_1 mech_data = @s mech_gridid
