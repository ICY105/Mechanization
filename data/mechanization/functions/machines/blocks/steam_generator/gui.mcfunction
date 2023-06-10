
# move/clear items
data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{tag:{mechanization:{gui_item:1b}}}]
data remove storage mechanization:temp list[{Slot:3b}]
data remove storage mechanization:temp list[{Slot:6b}]
data remove storage mechanization:temp list[{Slot:10b}]
data remove storage mechanization:temp list[{Slot:21b}]
data remove storage mechanization:temp list[{Slot:24b}]

data remove block -30000000 0 3201 Items
execute if data storage mechanization:temp list[0] run function mechanization:machines/blocks/steam_generator/gui_move
execute if data block -30000000 0 3201 Items[0] run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:air{drop_contents:true}

function mechanization:machines/blocks/steam_generator/gui_clear

### fill in items
function mechanization:base/utils/generate_energy_bar_ui

scoreboard players set #slot_io.in fluid.data 0
data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{Slot:3b}]
function mechanization:base/utils/get_fluid_from_item
execute if data storage mechanization:temp obj.tag.fluid{id:"water"} run function mechanization:base/utils/fluid_slot_io/slot_io_3
execute if data storage mechanization:temp obj.tag.fluid{id:"empty"} run function mechanization:base/utils/fluid_slot_io/slot_io_3

scoreboard players set #slot_io.in fluid.data 1
data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{Slot:6b}]
function mechanization:base/utils/get_fluid_from_item
execute if data storage mechanization:temp obj.tag.fluid{id:"steam"} run function mechanization:base/utils/fluid_slot_io/slot_io_6
execute if data storage mechanization:temp obj.tag.fluid{id:"empty"} run function mechanization:base/utils/fluid_slot_io/slot_io_6
data modify storage mechanization:test obj set from storage mechanization:temp obj

# water tank
scoreboard players set #tank mechanization.data 0
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.13 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:4b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:22b}].tag.display set from block -30000000 0 3201 Items[0].tag.display

# steam tank
scoreboard players set #tank mechanization.data 1
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.16 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:7b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:25b}].tag.display set from block -30000000 0 3201 Items[0].tag.display

# fuel slot
execute unless score @s mechanization.data matches 1.. run item replace block ~ ~ ~ container.1 with minecraft:structure_block{mechanization:{gui_item:1b},CustomModelData:6422900,display:{Name:'{"text":""}'}}
execute if score @s mechanization.data matches 1.. run item replace block ~ ~ ~ container.1 with minecraft:structure_block{mechanization:{gui_item:1b},CustomModelData:6422901,display:{Name:'{"text":""}'}}
