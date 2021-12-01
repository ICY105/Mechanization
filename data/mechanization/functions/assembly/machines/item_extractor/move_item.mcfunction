
scoreboard players set $out_0 mechanization.data 0
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=#mechanization:valid_block_entities,distance=..0.49] run function #mechanization:custom_item_extraction
execute if score $out_0 mechanization.data matches 0 run function mechanization:assembly/machines/item_extractor/default_item_selection

execute if data storage du:temp list[0] run function mechanization:assembly/machines/item_extractor/move_item_2
