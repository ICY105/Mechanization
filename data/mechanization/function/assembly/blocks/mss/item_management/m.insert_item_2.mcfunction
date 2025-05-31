
# convert drive data
$data modify storage mechanization:temp obj.drive_contents set from storage mechanization:temp obj.block_contents[{Slot: $(slot)b}].components."minecraft:bundle_contents"
function mechanization:assembly/blocks/mss/drive_management/convert_drive_data

# clean drive data
data remove storage mechanization:temp obj.converted_drive[].components."minecraft:lore"[0]
data remove storage mechanization:temp obj.converted_drive[].components."minecraft:custom_data".mss
data modify storage mechanization:temp obj.converted_drive[] merge value {count: 1, components:{"minecraft:max_stack_size":2, "!minecraft:max_damage":{}}}

# setup target inv
setblock -30000000 0 3201 minecraft:yellow_shulker_box replace
data modify block -30000000 0 3201 Items append from storage mechanization:temp obj.converted_drive[]

# setup source inv
setblock -30000000 1 3201 minecraft:yellow_shulker_box replace
data modify block -30000000 1 3201 Items append from storage mechanization:temp obj.item
execute unless data storage mechanization:temp obj.item.components."minecraft:custom_data" run data modify block -30000000 1 3201 Items[0].components."minecraft:custom_data" set value {}
item modify block -30000000 1 3201 container.0 [{function:"minecraft:set_count",count:1},{function:"minecraft:set_components",components:{"minecraft:max_stack_size":2,"!minecraft:max_damage":{}}}]

# attempt to insert item, return if unsuccessful
loot insert -30000000 0 3201 mine -30000000 1 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]
data modify storage mechanization:temp list set value []
data modify storage mechanization:temp list append from block -30000000 0 3201 Items[{count: 2}]
execute unless data storage mechanization:temp list[0] run return 0

# add item to drive slot
execute store result score #slot mechanization.data run data get storage mechanization:temp list[0].Slot
execute if score #slot mechanization.data matches 9..16 run scoreboard players remove #slot mechanization.data 1
execute if score #slot mechanization.data matches 18..25 run scoreboard players remove #slot mechanization.data 2
execute store result storage mechanization:temp obj.slot int 1 run scoreboard players get #slot mechanization.data

execute if score #slot mechanization.data matches 0..7 run function mechanization:assembly/blocks/mss/item_management/m.c0.insert_item_3 with storage mechanization:temp obj
execute if score #slot mechanization.data matches 8..15 run function mechanization:assembly/blocks/mss/item_management/m.c1.insert_item_3 with storage mechanization:temp obj
execute if score #slot mechanization.data matches 16..23 run function mechanization:assembly/blocks/mss/item_management/m.c2.insert_item_3 with storage mechanization:temp obj

$data modify block ~ ~ ~ Items[{Slot: $(slot)b}].components."minecraft:bundle_contents" set from storage mechanization:temp obj.drive_contents
