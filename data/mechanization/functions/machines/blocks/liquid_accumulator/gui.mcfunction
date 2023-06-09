
#move/clear items
data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{tag:{mechanization:{gui_item:1b}}}]
data remove storage mechanization:temp list[{Slot:0b}]
data remove storage mechanization:temp list[{Slot:6b}]

data remove block -30000000 0 3201 Items
execute if data storage mechanization:temp list[0] run function mechanization:machines/blocks/liquid_accumulator/gui_move
execute if data block -30000000 0 3201 Items[0] run loot give @p mine -30000000 0 3201 minecraft:air{drop_contents:true}

function mechanization:machines/blocks/liquid_accumulator/gui_clear

### fill in items
scoreboard players set #slot_io.in fluid.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:base/utils/fluid_slot_io/slot_io_0

#tank
scoreboard players set #tank mechanization.data 0
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.4 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:1b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:7b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
