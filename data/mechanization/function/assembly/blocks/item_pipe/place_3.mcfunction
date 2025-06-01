
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players add #model mechanization.data 1
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players add #model mechanization.data 2
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players add #model mechanization.data 4
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players add #model mechanization.data 8
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add #model mechanization.data 16
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add #model mechanization.data 32

execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 2
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 1
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 8
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 4
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 32
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players add @s mechanization.data 16

item modify entity @s contents {"function":"minecraft:set_custom_model_data","floats":{"values":[{"type":"minecraft:score","target":{"type":"minecraft:context","target":"this"},"score":"mechanization.data","scale":1}],"mode":"replace_all"}}

execute if score #id mechanization.data matches 0.. run scoreboard players operation #predicate mechanization.data = @s mechanization.item_id
execute if score #id mechanization.data matches 0.. as @e[type=minecraft:item_display,tag=mechanization.item_pipe,predicate=mechanization:matches_uuid,distance=0..] run scoreboard players operation @s mechanization.item_id = #id mechanization.data
execute if score #id mechanization.data matches 0.. as @e[type=minecraft:item_frame,tag=mechanization.item_extractor,predicate=mechanization:matches_uuid,distance=0..] run scoreboard players operation @s mechanization.item_id = #id mechanization.data
execute if score #id mechanization.data matches 0.. as @e[type=minecraft:item_frame,tag=mechanization.item_injector,predicate=mechanization:matches_uuid,distance=0..] run scoreboard players operation @s mechanization.item_id = #id mechanization.data
execute if score #id mechanization.data matches -1 run scoreboard players operation #id mechanization.data = @s mechanization.item_id
