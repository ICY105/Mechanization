
execute as @e[type=minecraft:item,tag=!mechanization.mss_checked_item,distance=..68] if items entity @s contents *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/clear_item_data/dropped_item_data_2
tag @e[type=minecraft:item,tag=!mechanization.mss_checked_item,distance=..12] add mechanization.mss_checked_item
