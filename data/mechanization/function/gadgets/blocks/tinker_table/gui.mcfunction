
data modify storage mechanization:temp list set value []
data modify storage mechanization:temp obj set value {}
data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{Slot:10b}]

# verify same item
scoreboard players set #type mechanization.data -1
execute if data entity @s item.components."minecraft:custom_data".stored_item run scoreboard players set #type mechanization.data 0
execute if score #type mechanization.data matches 0 store success score #type mechanization.data run data modify entity @s item.components."minecraft:custom_data".stored_item set from block ~ ~ ~ Items[{Slot:10b}]
execute if score #type mechanization.data matches 1 run function mechanization:gadgets/blocks/tinker_table/clear_gui
execute if score #type mechanization.data matches 1 run function mechanization:gadgets/blocks/tinker_table/add_stored_items_gui
execute unless items block ~ ~ ~ container.10 * if data entity @s item.components."minecraft:custom_data".stored_item.id run function mechanization:gadgets/blocks/tinker_table/clear_gui
execute unless items block ~ ~ ~ container.10 * if data entity @s item.components."minecraft:custom_data".stored_item.id run function mechanization:gadgets/blocks/tinker_table/add_stored_items_gui

# get data
scoreboard players set #active_slots mechanization.data 0
execute store result score #active_slots mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.count
execute store result score #type mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.type

# item managment
setblock -30000000 0 3201 minecraft:yellow_shulker_box replace
function mechanization:gadgets/blocks/tinker_table/fill_gui

execute if score #active_slots mechanization.data matches 1.. run function mechanization:gadgets/blocks/tinker_table/gui_process_item {index: 12}
execute if score #active_slots mechanization.data matches 2.. run function mechanization:gadgets/blocks/tinker_table/gui_process_item {index: 13}
execute if score #active_slots mechanization.data matches 3.. run function mechanization:gadgets/blocks/tinker_table/gui_process_item {index: 14}
execute if score #active_slots mechanization.data matches 4.. run function mechanization:gadgets/blocks/tinker_table/gui_process_item {index: 15}
execute if score #active_slots mechanization.data matches 5.. run function mechanization:gadgets/blocks/tinker_table/gui_process_item {index: 16}
execute if score #active_slots mechanization.data matches 6.. run function mechanization:gadgets/blocks/tinker_table/gui_process_item {index: 17}

execute if items block -30000000 0 3201 container.* * run loot give @p mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]

# add modifiers
execute if score #active_slots mechanization.data matches 1.. run function mechanization:gadgets/blocks/tinker_table/add_modifiers
data modify block ~ ~ ~ Items[{Slot:10b}] set from storage mechanization:temp obj 

# cleanup
data modify entity @s item.components."minecraft:custom_data".stored_item set from block ~ ~ ~ Items[{Slot:10b}]
execute if block ~ ~ ~ minecraft:barrel[open=false] run data modify entity @s item.components."minecraft:custom_data".stored_item set value {}
execute if block ~ ~ ~ minecraft:barrel[open=false] run function mechanization:gadgets/blocks/tinker_table/clear_gui
execute if block ~ ~ ~ minecraft:barrel[open=false] run function mechanization:base/utils/close_gui
