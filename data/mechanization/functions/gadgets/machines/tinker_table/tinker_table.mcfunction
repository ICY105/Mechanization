
# remove bad items
data remove block -30000000 0 3201 Items
data modify block -30000000 0 3201 Items set from block ~ ~ ~ Items
item replace block -30000000 0 3201 container.10 with air
data remove block -30000000 0 3201 Items[{tag:{ mechanization:{gui_item:1b} }}]
loot give @p mine -30000000 0 3201 minecraft:air{drop_contents:true}

scoreboard players set #active_slots mechanization.data 0
function mechanization:gadgets/machines/tinker_table/reset_ui

# Main
execute if data block ~ ~ ~ Items[{Slot:10b}].tag.mechanization.upgrades run data modify block ~ ~ ~ Items append from block ~ ~ ~ Items[{Slot:10b}].tag.mechanization.upgrades.items[]
execute if data block ~ ~ ~ Items[{Slot:10b}].tag.mechanization.upgrades run tag @s add mechanization.active
execute if data block ~ ~ ~ Items[{Slot:10b}].tag.mechanization.upgrades run data modify entity @s Item.tag.stored_item set from block ~ ~ ~ Items[{Slot:10b}]

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t1
