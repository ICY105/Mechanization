
scoreboard players set $out_0 mech_data 0
execute as @e[type=#mechanization:item_frames,distance=..0.1] run function #mechanization:custom_item_extraction
execute if score $out_0 mech_data matches 0 run function mechanization:assembly/machines/item_extractor/default_item_selection

execute if data storage du:temp list[0] run function mechanization:assembly/machines/item_extractor/move_item_2
