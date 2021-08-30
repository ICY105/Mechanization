
## ui

#remove bad items
data remove block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items set from block ~ ~ ~ Items
item replace block -29999999 0 1601 container.10 with air
data remove block -29999999 0 1601 Items[{tag:{du_gui:1b}}]
loot give @p mine -29999999 0 1601 minecraft:air{drop_contents:true}

scoreboard players set $in_0 mech_data 0
function mechanization:gadgets/machines/tinker_table/reset_ui

### Main
execute if data block ~ ~ ~ Items[{Slot:10b}].tag.mech_upgrades run data modify block ~ ~ ~ Items append from block ~ ~ ~ Items[{Slot:10b}].tag.mech_upgrades.items[]
execute if data block ~ ~ ~ Items[{Slot:10b}].tag.mech_upgrades run tag @s add mech_active
execute if data block ~ ~ ~ Items[{Slot:10b}].tag.mech_upgrades run data modify entity @s Item.tag.stored_item set from block ~ ~ ~ Items[{Slot:10b}]

## cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t1
