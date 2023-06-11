
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 1
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 2
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 8
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 4
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 16
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 32

scoreboard players set #model mechanization.data 6421000
scoreboard players operation #model mechanization.data += @s mechanization.data
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get #model mechanization.data

scoreboard players operation $predicate mechanization.data = @s mechanization.item_id
scoreboard players add #global_id mechanization.item_id 1
scoreboard players operation #id mechanization.data = #global_id mechanization.item_id
execute at @s run function mechanization:assembly/blocks/item_pipe/break_update
