
# move/clear items
data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{tag:{mechanization:{gui_item:1b}}}]
data remove storage mechanization:temp list[{Slot:6b}]
data remove storage mechanization:temp list[{Slot:24b}]
data remove storage mechanization:temp list[{Slot:10b}]
data remove storage mechanization:temp list[{Slot:12b}]
data remove storage mechanization:temp list[{Slot:14b}]

data remove block -30000000 0 3201 Items
execute if data storage mechanization:temp list[0] run function mechanization:machines/blocks/enchanting_station/gui_move
execute if data block -30000000 0 3201 Items[0] run loot give @p mine -30000000 0 3201 minecraft:air{drop_contents:true}

function mechanization:machines/blocks/enchanting_station/gui_clear

### fill in items
function mechanization:base/utils/generate_energy_bar_ui

scoreboard players set #slot_io.in fluid.data 0
data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{Slot:6b}]
function mechanization:base/utils/get_fluid_from_item
execute if data storage mechanization:temp obj.tag.fluid{id:"experience"} run function mechanization:base/utils/fluid_slot_io/slot_io_6
execute if data storage mechanization:temp obj.tag.fluid{id:"empty"} run function mechanization:base/utils/fluid_slot_io/slot_io_6

# tank
scoreboard players set #tank mechanization.data 0
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.16 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:7b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:25b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
