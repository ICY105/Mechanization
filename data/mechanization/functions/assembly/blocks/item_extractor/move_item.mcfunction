
scoreboard players set #allowed mechanization.data -1
execute align xyz as @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0] run function #mechanization:custom_item_extraction
execute if score #allowed mechanization.data matches -1 run function mechanization:assembly/blocks/item_extractor/default_item_selection

execute if score #allowed mechanization.data matches 1 if data storage mechanization:temp list[0] run function mechanization:assembly/blocks/item_extractor/move_item_2
