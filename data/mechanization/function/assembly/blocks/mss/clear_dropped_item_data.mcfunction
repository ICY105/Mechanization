
execute as @e[type=minecraft:item,tag=!mechanization.mss_checked_item,distance=..12,nbt={Item:{tag:{mss:{}}}}] run function mechanization:assembly/blocks/mss/clear_dropped_item_data_2
tag @e[type=minecraft:item,tag=!mechanization.mss_checked_item,distance=..12] add mechanization.mss_checked_item
