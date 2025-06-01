
scoreboard players set #allowed mechanization.data -1
data modify storage mechanization:temp list set value []
setblock -30000000 0 3201 minecraft:yellow_shulker_box replace

execute if entity @s[tag=mechanization.filtered] run setblock -30000000 1 3201 minecraft:yellow_shulker_box replace
execute if entity @s[tag=mechanization.filtered] run data modify block -30000000 1 3201 Items set from entity @s Item.components."minecraft:custom_data".filter.components."minecraft:custom_data".mechanization.items

execute align xyz as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0] run function #mechanization:custom_item_extraction
execute if score #allowed mechanization.data matches -1 run function mechanization:assembly/blocks/item_extractor/default_item_selection

scoreboard players set #loop mechanization.data 0
execute store result storage mechanization:temp var int 1 run scoreboard players get #loop mechanization.data
execute if score #allowed mechanization.data matches 1 if data storage mechanization:temp list[0] run function mechanization:assembly/blocks/item_extractor/m.move_item_2 with storage mechanization:temp
