
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 2
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 1
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 8
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 4
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 32
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 16

item modify entity @s contents {"function":"minecraft:set_custom_model_data","floats":{"values":[{"type":"minecraft:score","target":{"type":"minecraft:context","target":"this"},"score":"mechanization.data","scale":1}],"mode":"replace_all"}}

scoreboard players operation #predicate mechanization.data = @s mechanization.item_id
scoreboard players add #global_id mechanization.item_id 1
scoreboard players operation #id mechanization.data = #global_id mechanization.item_id
execute at @s run function mechanization:assembly/blocks/item_pipe/break_update
