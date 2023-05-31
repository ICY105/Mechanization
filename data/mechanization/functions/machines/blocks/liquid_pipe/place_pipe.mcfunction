
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 1
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 2
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 2
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 1
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 8
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 4
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 4
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 8
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 32
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 16
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add $temp_0 mechanization.data 16
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 32

scoreboard players set $temp_2 mechanization.data 6421000
scoreboard players operation $temp_2 mechanization.data += @s mechanization.data
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_2 mechanization.data

execute if score $temp_1 mechanization.data matches 0.. run scoreboard players operation $predicate mechanization.data = @s mechanization.item_id
execute if score $temp_1 mechanization.data matches 0.. as @e[type=minecraft:item_frame,tag=mechanization.pipe,predicate=mechanization:matches_uuid] run scoreboard players operation @s mechanization.item_id = $temp_1 mechanization.data
execute if score $temp_1 mechanization.data matches -1 run scoreboard players operation $temp_1 mechanization.data = @s mechanization.item_id
