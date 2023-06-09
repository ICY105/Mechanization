
# move/clear items
data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{tag:{mechanization:{gui_item:1b}}}]
data remove storage mechanization:temp list[{Slot:1b}]
data remove storage mechanization:temp list[{Slot:3b}]
data remove storage mechanization:temp list[{Slot:7b}]

data remove block -30000000 0 3201 Items
execute if data storage mechanization:temp list[0] run function mechanization:machines/blocks/reformer/gui_move
execute if data block -30000000 0 3201 Items[0] run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:air{drop_contents:true}

function mechanization:machines/blocks/reformer/gui_clear

### fill in items
function mechanization:base/utils/generate_energy_bar_ui

scoreboard players set #slot_io.in fluid.data 0
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.fluid{id:"experience"} run function mechanization:base/utils/fluid_slot_io/slot_io_1

# tank
scoreboard players set #tank mechanization.data 0
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.5 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:2b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:8b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
