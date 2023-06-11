
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players add #model mechanization.data 1
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 2
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players add #model mechanization.data 2
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 1
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players add #model mechanization.data 8
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 4
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players add #model mechanization.data 4
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 8
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add #model mechanization.data 32
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 16
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add #model mechanization.data 16
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 32

scoreboard players set #model.1 mechanization.data 6421000
scoreboard players operation #model.1 mechanization.data += @s mechanization.data
execute store result entity @s item.tag.CustomModelData int 1 run scoreboard players get #model.1 mechanization.data

execute if score #id mechanization.data matches 0.. run scoreboard players operation #predicate mechanization.data = @s mechanization.item_id
execute if score #id mechanization.data matches 0.. as @e[type=minecraft:item_display,tag=mechanization.item_pipe,predicate=mechanization:matches_uuid] run scoreboard players operation @s mechanization.item_id = #id mechanization.data
execute if score #id mechanization.data matches -1 run scoreboard players operation #id mechanization.data = @s mechanization.item_id
