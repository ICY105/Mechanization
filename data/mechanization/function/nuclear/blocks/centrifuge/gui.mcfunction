
# move/clear items
data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{tag:{mechanization:{gui_item:1b}}}]
data remove storage mechanization:temp list[{Slot:0b}]
data remove storage mechanization:temp list[{Slot:1b}]
data remove storage mechanization:temp list[{Slot:4b}]
data remove storage mechanization:temp list[{Slot:7b}]
data remove storage mechanization:temp list[{Slot:9b}]
data remove storage mechanization:temp list[{Slot:18b}]
data remove storage mechanization:temp list[{Slot:19b}]
data remove storage mechanization:temp list[{Slot:22b}]
data remove storage mechanization:temp list[{Slot:25b}]

data remove block -30000000 0 3201 Items
execute if data storage mechanization:temp list[0] run function mechanization:nuclear/blocks/centrifuge/gui_move
execute if data block -30000000 0 3201 Items[0] run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:air{drop_contents:true}

function mechanization:nuclear/blocks/centrifuge/gui_clear

### fill in items
function mechanization:base/utils/generate_energy_bar_ui
execute if entity @s[tag=mechanization.errored] run item replace block ~ ~ ~ container.15 with minecraft:barrier{display:{Name:'{"translate":"lore.mechanization.alloy_furnace_error","italic":false,"color":"red"}'}, mechanization:{gui_item:1b}}

# handle fluid slot IO
scoreboard players set #slot_io.in fluid.data 0
execute if data block ~ ~ ~ Items[{Slot:1b}] run function mechanization:base/utils/fluid_slot_io/slot_io_1
scoreboard players set #slot_io.in fluid.data 1
execute if data block ~ ~ ~ Items[{Slot:4b}] run function mechanization:base/utils/fluid_slot_io/slot_io_4
scoreboard players set #slot_io.in fluid.data 2
execute if data block ~ ~ ~ Items[{Slot:7b}] run function mechanization:base/utils/fluid_slot_io/slot_io_7

# tank 1
scoreboard players set #tank mechanization.data 0
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.11 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:2b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:20b}].tag.display set from block -30000000 0 3201 Items[0].tag.display

# tank 2
scoreboard players set #tank mechanization.data 1
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.14 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:5b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:23b}].tag.display set from block -30000000 0 3201 Items[0].tag.display

# tank 3
scoreboard players set #tank mechanization.data 2
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.17 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:8b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:26b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
