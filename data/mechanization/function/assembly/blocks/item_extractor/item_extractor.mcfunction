
execute if entity @s[tag=!mechanization.item_extractor.has_box] run function mechanization:assembly/blocks/item_extractor/create_box

tag @s add mechanization.temp
execute if entity @e[distance=0,tag=mechanization.item_extractor,tag=!mechanization.temp] run function mechanization:assembly/blocks/item_extractor/break
execute if entity @e[distance=0,tag=mechanization.item_injector,tag=!mechanization.temp] run function mechanization:assembly/blocks/item_extractor/break
tag @s remove mechanization.temp

execute unless score @s mechanization.item_id matches -2147483648.. align xyz positioned ~0.5 ~0.5 ~0.5 run scoreboard players operation @s mechanization.item_id = @n[tag=mechanization.item_pipe,distance=..0.1] mechanization.item_id

function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 1 if score @s mechanization.item_id matches -2147483648.. positioned ^ ^ ^-0.5 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #mechanization:inv run function mechanization:assembly/blocks/item_extractor/move_item
