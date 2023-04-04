####################
# Exports invalid items in the output slot
####################

scoreboard players reset @s smithed.data
# Recreate the output and check if it's the same thing, if so add a tag to invalidate shift-clicking

data modify storage smithed.crafter:main root.temp.export_items set value []
data modify storage smithed.crafter:main root.temp.export_items append from storage smithed.crafter:main root.Items[{Slot: 16b}]

function smithed.crafter:v0.1.0/block/table/crafting/input/read_barrel
data modify storage smithed.crafter:main root.temp.item set from block ~ ~ ~ Items[{Slot: 16b}]
data remove storage smithed.crafter:main root.temp.item.Count
data modify storage smithed.crafter:main root.temp.item2 set from storage smithed.crafter:main root.temp.export_items[0]
data remove storage smithed.crafter:main root.temp.item2.Count
execute store success score @s smithed.data run data modify storage smithed.crafter:main root.temp.item set from storage smithed.crafter:main root.temp.item2
execute if score @s smithed.data matches 0 run tag @s add smithed.no_shift_click

# Spawns the items on the nearest player that opened the table's gui
function smithed.crafter:v0.1.0/block/table/crafting/manage_invalids/spawn_loop

# Reset the saved tag to have nothing in it because you just exported the output
data modify entity @s ArmorItems[3].tag.smithed.stored_output set value {Slot: 16b}
