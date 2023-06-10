
#move/clear items
data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{tag:{mechanization:{gui_item:1b}}}]
data remove storage mechanization:temp list[{Slot:1b}]
data remove storage mechanization:temp list[{Slot:19b}]
data remove storage mechanization:temp list[{Slot:6b}]
data remove storage mechanization:temp list[{Slot:24b}]

data remove block -30000000 0 3201 Items
execute if data storage mechanization:temp list[0] run function mechanization:machines/blocks/thermoelectric_generator/gui_move
execute if data block -30000000 0 3201 Items[0] run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:air{drop_contents:true}

function mechanization:machines/blocks/thermoelectric_generator/gui_clear

### fill in items
function mechanization:base/utils/generate_energy_bar_ui

scoreboard players set #slot_io.in fluid.data 0
data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{Slot:1b}]
function mechanization:base/utils/get_fluid_from_item
execute store result score #temperature mechanization.data run data get storage mechanization:temp obj.tag.fluid.temperature
execute if score #temperature mechanization.data matches ..99 run function mechanization:base/utils/fluid_slot_io/slot_io_1
execute if data storage mechanization:temp obj.tag.fluid{id:"empty"} run function mechanization:base/utils/fluid_slot_io/slot_io_1

scoreboard players set #slot_io.in fluid.data 1
data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{Slot:6b}]
function mechanization:base/utils/get_fluid_from_item
execute store result score #temperature mechanization.data run data get storage mechanization:temp obj.tag.fluid.temperature
execute if score #temperature mechanization.data matches 100.. run function mechanization:base/utils/fluid_slot_io/slot_io_6
execute if data storage mechanization:temp obj.tag.fluid{id:"empty"} run function mechanization:base/utils/fluid_slot_io/slot_io_6

# tank 1
scoreboard players set #tank mechanization.data 0
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.11 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:2b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:20b}].tag.display set from block -30000000 0 3201 Items[0].tag.display

# tank 2
scoreboard players set #tank mechanization.data 1
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.16 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:7b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:25b}].tag.display set from block -30000000 0 3201 Items[0].tag.display

# model
execute if score #active mechanization.data matches 0 run data modify entity @s item.tag.CustomModelData set value 6422030
execute if score #active mechanization.data matches 1 run data modify entity @s item.tag.CustomModelData set value 6422951
