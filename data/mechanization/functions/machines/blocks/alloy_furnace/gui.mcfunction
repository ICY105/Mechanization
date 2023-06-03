
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
execute if data storage mechanization:temp list[0] run function mechanization:machines/blocks/alloy_furnace/gui_move
execute if data block -30000000 0 3201 Items[0] run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:air{drop_contents:true}

function mechanization:machines/blocks/alloy_furnace/gui_clear

### fill in items
execute if entity @s[tag=mechanization.errored] run item replace block ~ ~ ~ container.16 with minecraft:barrier{display:{Name:'{"translate":"lore.mechanization.alloy_furnace_error","italic":false}'}, mechanization:{gui_item:1b}}

# handle fluid slot IO
scoreboard players set #slot_io.in fluid.data 0
execute if data block ~ ~ ~ Items[{Slot:1b}] run function mechanization:base/utils/fluid_slot_io/slot_io_1
scoreboard players set #slot_io.in fluid.data 1
execute if data block ~ ~ ~ Items[{Slot:4b}] run function mechanization:base/utils/fluid_slot_io/slot_io_4
scoreboard players set #slot_io.in fluid.data 2
execute if data block ~ ~ ~ Items[{Slot:7b}] run function mechanization:base/utils/fluid_slot_io/slot_io_7

# tank 1
scoreboard players operation #storage mechanization.data = @s fluid.storage.0
data modify storage mechanization:temp obj set from entity @s item.tag.fluids[0]
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.11 from block -30000000 0 3201 container.0

# tank 2
scoreboard players operation #storage mechanization.data = @s fluid.storage.1
data modify storage mechanization:temp obj set from entity @s item.tag.fluids[1]
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.14 from block -30000000 0 3201 container.0

# tank 3
scoreboard players operation #storage mechanization.data = @s fluid.storage.2
data modify storage mechanization:temp obj set from entity @s item.tag.fluids[2]
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.17 from block -30000000 0 3201 container.0
