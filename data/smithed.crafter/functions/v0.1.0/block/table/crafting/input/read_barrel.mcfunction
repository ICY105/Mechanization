####################
# Reads the data from the barrel and creates recipes based on it
####################

tag @s remove smithed.crafter.assembled_output
scoreboard players set @s smithed.data 0

data modify storage smithed.crafter:main root.temp.crafting_input_temp set value [[{id: "minecraft:air"}, {id: "minecraft:air"}, {id: "minecraft:air"}], [{id: "minecraft:air"}, {id: "minecraft:air"}, {id: "minecraft:air"}], [{id: "minecraft:air"}, {id: "minecraft:air"}, {id: "minecraft:air"}]]

## Copy block content into a storage for nbt manipulation
data modify storage smithed.crafter:main root.Items set from block ~ ~ ~ Items

execute if data storage smithed.crafter:main root.Items[{Slot: 2b}] run data modify storage smithed.crafter:main root.temp.crafting_input_temp[0][0] set from storage smithed.crafter:main root.Items[{Slot: 2b}]
execute if data storage smithed.crafter:main root.Items[{Slot: 3b}] run data modify storage smithed.crafter:main root.temp.crafting_input_temp[0][1] set from storage smithed.crafter:main root.Items[{Slot: 3b}]
execute if data storage smithed.crafter:main root.Items[{Slot: 4b}] run data modify storage smithed.crafter:main root.temp.crafting_input_temp[0][2] set from storage smithed.crafter:main root.Items[{Slot: 4b}]
execute if data storage smithed.crafter:main root.Items[{Slot: 11b}] run data modify storage smithed.crafter:main root.temp.crafting_input_temp[1][0] set from storage smithed.crafter:main root.Items[{Slot: 11b}]
execute if data storage smithed.crafter:main root.Items[{Slot: 12b}] run data modify storage smithed.crafter:main root.temp.crafting_input_temp[1][1] set from storage smithed.crafter:main root.Items[{Slot: 12b}]
execute if data storage smithed.crafter:main root.Items[{Slot: 13b}] run data modify storage smithed.crafter:main root.temp.crafting_input_temp[1][2] set from storage smithed.crafter:main root.Items[{Slot: 13b}]
execute if data storage smithed.crafter:main root.Items[{Slot: 20b}] run data modify storage smithed.crafter:main root.temp.crafting_input_temp[2][0] set from storage smithed.crafter:main root.Items[{Slot: 20b}]
execute if data storage smithed.crafter:main root.Items[{Slot: 21b}] run data modify storage smithed.crafter:main root.temp.crafting_input_temp[2][1] set from storage smithed.crafter:main root.Items[{Slot: 21b}]
execute if data storage smithed.crafter:main root.Items[{Slot: 22b}] run data modify storage smithed.crafter:main root.temp.crafting_input_temp[2][2] set from storage smithed.crafter:main root.Items[{Slot: 22b}]

function smithed.crafter:v0.1.0/block/table/crafting/input/handle_tags

function smithed.crafter:v0.1.0/block/table/crafting/input/process

function smithed.crafter:v0.1.0/block/table/crafting/recipes

execute if data storage smithed.crafter:main root.temp.crafting_input{0: [{}], 1: [{}], 2: [{}]} unless data storage smithed.crafter:main root.temp.crafting_input{0: [{id: "minecraft:air", Slot: 1b}, {id: "minecraft:air", Slot: 2b}], 1: [{id: "minecraft:air", Slot: 1b}, {id: "minecraft:air", Slot: 2b}], 2: [{id: "minecraft:air", Slot: 1b}, {id: "minecraft:air", Slot: 2b}]} if entity @s[scores={smithed.data=0}] run function smithed.crafter:v0.1.0/block/table/crafting/input/mirror

execute if data storage smithed.crafter:main root.temp.crafting_input{0: [{}], 1: [{}], 2: []} unless data storage smithed.crafter:main root.temp.crafting_input{0: [{id: "minecraft:air", Slot: 1b}, {id: "minecraft:air", Slot: 2b}], 1: [{id: "minecraft:air", Slot: 1b}, {id: "minecraft:air", Slot: 2b}]} if entity @s[scores={smithed.data=0}] run function smithed.crafter:v0.1.0/block/table/crafting/input/mirror

execute if data storage smithed.crafter:main root.temp.crafting_input{0: [{}], 1: [], 2: []} unless data storage smithed.crafter:main root.temp.crafting_input{0: [{id: "minecraft:air", Slot: 1b}, {id: "minecraft:air", Slot: 2b}]} if entity @s[scores={smithed.data=0}] run function smithed.crafter:v0.1.0/block/table/crafting/input/mirror

execute if entity @s[scores={smithed.data=0}] run function smithed.crafter:v0.1.0/block/table/crafting/shapeless_recipes

# If something was crafted, add the assembled output nonsense
execute if entity @s[scores={smithed.data=0}] run data remove block ~ ~ ~ Items[{Slot: 16b}]
execute if entity @s[scores={smithed.data=1..}] run tag @s add smithed.crafter.assembled_output
data modify entity @s ArmorItems[3].tag.smithed.stored_barrel_data set from block ~ ~ ~ Items
execute if entity @s[scores={smithed.data=1..}] run data modify entity @s ArmorItems[3].tag.smithed.stored_output set from block ~ ~ ~ Items[{Slot: 16b}]
