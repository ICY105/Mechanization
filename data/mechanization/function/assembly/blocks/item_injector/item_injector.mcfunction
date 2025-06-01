
execute if entity @s[tag=!mechanization.item_injector.has_box] run function mechanization:assembly/blocks/item_injector/create_box

tag @s add mechanization.temp
execute if entity @e[distance=0,tag=mechanization.item_extractor,tag=!mechanization.temp] run function mechanization:assembly/blocks/item_injector/break
execute if entity @e[distance=0,tag=mechanization.item_injector,tag=!mechanization.temp] run function mechanization:assembly/blocks/item_injector/break
tag @s remove mechanization.temp

execute unless score @s mechanization.item_id matches -2147483648.. align xyz positioned ~0.5 ~0.5 ~0.5 run scoreboard players operation @s mechanization.item_id = @n[tag=mechanization.item_pipe,distance=..0.1] mechanization.item_id
