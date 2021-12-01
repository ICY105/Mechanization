
scoreboard players set $out_1 mechanization.data -1
execute if block ~ ~ ~ #du:internal/furnace-like run function mechanization:assembly/machines/item_inserter/item_selection_furnace
execute if block ~ ~ ~ minecraft:brewing_stand run function mechanization:assembly/machines/item_inserter/item_selection_brewing_stand
execute if block ~ ~ ~ #minecraft:camp_fires run function mechanization:assembly/machines/item_inserter/item_selection_campfire
execute if block ~ ~ ~ #mechanization:inv_9 run function mechanization:assembly/machines/item_inserter/item_selection_9
execute if block ~ ~ ~ #mechanization:inv_27 run function mechanization:assembly/machines/item_inserter/item_selection_27
execute if score $out_1 mechanization.data matches 0.. run scoreboard players set $out_0 mechanization.data 1
