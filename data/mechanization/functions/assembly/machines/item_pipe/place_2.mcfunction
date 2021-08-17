
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

scoreboard players set $temp_2 mech_data 6425900
scoreboard players operation $temp_2 mech_data += @s mech_data
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_2 mech_data

execute if score $temp_1 mech_data matches 0.. run scoreboard players operation $predicate mech_data = @s du_uuid
execute if score $temp_1 mech_data matches 0.. as @e[tag=mech_item_pipe,predicate=mechanization:matches_uuid] run scoreboard players operation @s du_uuid = $temp_1 mech_data
execute if score $temp_1 mech_data matches -1 run scoreboard players operation $temp_1 mech_data = @s du_uuid
