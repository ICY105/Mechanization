####################
# Creates the extra output items that are needed
####################

# Then, remove the required number of output slots
execute store result score @s smithed.data run data get block ~ ~ ~ Items[{Slot: 2b}].Count
execute store result block ~ ~ ~ Items[{Slot: 2b}].Count byte 1 run scoreboard players operation @s smithed.data -= $temp2 smithed.data

execute store result score @s smithed.data run data get block ~ ~ ~ Items[{Slot: 3b}].Count
execute store result block ~ ~ ~ Items[{Slot: 3b}].Count byte 1 run scoreboard players operation @s smithed.data -= $temp2 smithed.data

execute store result score @s smithed.data run data get block ~ ~ ~ Items[{Slot: 4b}].Count
execute store result block ~ ~ ~ Items[{Slot: 4b}].Count byte 1 run scoreboard players operation @s smithed.data -= $temp2 smithed.data

execute store result score @s smithed.data run data get block ~ ~ ~ Items[{Slot: 11b}].Count
execute store result block ~ ~ ~ Items[{Slot: 11b}].Count byte 1 run scoreboard players operation @s smithed.data -= $temp2 smithed.data

execute store result score @s smithed.data run data get block ~ ~ ~ Items[{Slot: 12b}].Count
execute store result block ~ ~ ~ Items[{Slot: 12b}].Count byte 1 run scoreboard players operation @s smithed.data -= $temp2 smithed.data

execute store result score @s smithed.data run data get block ~ ~ ~ Items[{Slot: 13b}].Count
execute store result block ~ ~ ~ Items[{Slot: 13b}].Count byte 1 run scoreboard players operation @s smithed.data -= $temp2 smithed.data

execute store result score @s smithed.data run data get block ~ ~ ~ Items[{Slot: 20b}].Count
execute store result block ~ ~ ~ Items[{Slot: 20b}].Count byte 1 run scoreboard players operation @s smithed.data -= $temp2 smithed.data

execute store result score @s smithed.data run data get block ~ ~ ~ Items[{Slot: 21b}].Count
execute store result block ~ ~ ~ Items[{Slot: 21b}].Count byte 1 run scoreboard players operation @s smithed.data -= $temp2 smithed.data

execute store result score @s smithed.data run data get block ~ ~ ~ Items[{Slot: 22b}].Count
execute store result block ~ ~ ~ Items[{Slot: 22b}].Count byte 1 run scoreboard players operation @s smithed.data -= $temp2 smithed.data

# $temp2 now stores the number of extra items that need to be spawned, and in turn, the count that needs to be removed from each slot
# Recreate the output nbt so it can be used to create the extras
function smithed.crafter:v0.1.0/block/table/crafting/input/read_barrel
data modify storage smithed.crafter:main root.temp.item set from block ~ ~ ~ Items[{Slot: 16b}]
data remove block ~ ~ ~ Items[{Slot: 16b}]

execute as @p[distance=..12, tag=smithed.inside_crafter, tag=smithed.shift_clicked] at @s run function smithed.crafter:v0.1.0/block/table/crafting/output/shift_click/spawn_extra_items
function smithed.crafter:v0.1.0/block/table/crafting/input/read_barrel
tag @s remove smithed.crafter.assembled_output
data modify entity @s ArmorItems[3].tag.smithed.stored_output set value {Slot: 16b}
data modify entity @s ArmorItems[3].tag.smithed.stored_barrel_data set from block ~ ~ ~ Items
