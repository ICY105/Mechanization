
scoreboard players set $out_0 mech_data 0
data modify storage du:temp obj set from storage du:temp list[0]
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=#mechanization:valid_block_entities,distance=..0.49] run function #mechanization:custom_item_insertion
execute if score $out_0 mech_data matches 0 run function mechanization:assembly/machines/item_inserter/default_item_selection
execute if score $out_1 mech_data matches -1 run scoreboard players set $out_0 mech_data 0
execute if score $out_0 mech_data matches 1 if score $out_1 mech_data matches 0.. if entity @s[tag=mech_filtered] run function mechanization:assembly/machines/item_inserter/check_filter
execute if score $out_0 mech_data matches 1 if score $out_1 mech_data matches 0.. store result storage du:temp list[0].Slot byte 1 run scoreboard players get $out_1 mech_data 
execute if score $out_0 mech_data matches 1 if score $out_1 mech_data matches 0.. run data modify block ~ ~ ~ Items append from storage du:temp list[0]
