
# clear UI items in invalid slots
execute if items block ~ ~ ~ container.0 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.0 with minecraft:air
execute if items block ~ ~ ~ container.1 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.1 with minecraft:air
execute if items block ~ ~ ~ container.4 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.4 with minecraft:air
execute if items block ~ ~ ~ container.7 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.7 with minecraft:air
execute if items block ~ ~ ~ container.9 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.9 with minecraft:air
execute if items block ~ ~ ~ container.18 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.18 with minecraft:air
execute if items block ~ ~ ~ container.19 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.19 with minecraft:air
execute if items block ~ ~ ~ container.22 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.22 with minecraft:air
execute if items block ~ ~ ~ container.25 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.25 with minecraft:air

# drop invalid items
setblock -30000000 0 3201 minecraft:yellow_shulker_box replace
execute unless items block ~ ~ ~ container.2 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.2 from block ~ ~ ~ container.2
execute unless items block ~ ~ ~ container.3 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.3 from block ~ ~ ~ container.3
execute unless items block ~ ~ ~ container.5 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.5 from block ~ ~ ~ container.5
execute unless items block ~ ~ ~ container.6 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.6 from block ~ ~ ~ container.6
execute unless items block ~ ~ ~ container.8 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.8 from block ~ ~ ~ container.8
execute unless items block ~ ~ ~ container.10 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.10 from block ~ ~ ~ container.10
execute unless items block ~ ~ ~ container.11 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.11 from block ~ ~ ~ container.11
execute unless items block ~ ~ ~ container.12 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.12 from block ~ ~ ~ container.12
execute unless items block ~ ~ ~ container.13 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.13 from block ~ ~ ~ container.13
execute unless items block ~ ~ ~ container.14 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.14 from block ~ ~ ~ container.14
execute unless items block ~ ~ ~ container.15 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.15 from block ~ ~ ~ container.15
execute unless items block ~ ~ ~ container.16 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.16 from block ~ ~ ~ container.16
execute unless items block ~ ~ ~ container.17 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.17 from block ~ ~ ~ container.17
execute unless items block ~ ~ ~ container.20 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.20 from block ~ ~ ~ container.20
execute unless items block ~ ~ ~ container.21 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.21 from block ~ ~ ~ container.21
execute unless items block ~ ~ ~ container.23 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.23 from block ~ ~ ~ container.23
execute unless items block ~ ~ ~ container.24 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.24 from block ~ ~ ~ container.24
execute unless items block ~ ~ ~ container.26 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.26 from block ~ ~ ~ container.26
execute if data block -30000000 0 3201 Items[0] run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]

# move items
execute if items block ~ ~ ~ container.1 * run function mechanization:machines/blocks/alloy_furnace/m.gui_move_item {slot: 1}
execute if items block ~ ~ ~ container.4 * run function mechanization:machines/blocks/alloy_furnace/m.gui_move_item {slot: 4}
execute if items block ~ ~ ~ container.7 * run function mechanization:machines/blocks/alloy_furnace/m.gui_move_item {slot: 7}

# handle fluid slot IO
scoreboard players set #slot_io.in fluid.data 0
execute if items block ~ ~ ~ container.1 * run function mechanization:base/utils/fluid_slot_io/slot_io_1
scoreboard players set #slot_io.in fluid.data 1
execute if items block ~ ~ ~ container.4 * run function mechanization:base/utils/fluid_slot_io/slot_io_4
scoreboard players set #slot_io.in fluid.data 2
execute if items block ~ ~ ~ container.7 * run function mechanization:base/utils/fluid_slot_io/slot_io_7

# fill in items
item replace block ~ ~ ~ container.3 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,minecraft:custom_model_data=6421200,!minecraft:food]
item replace block ~ ~ ~ container.6 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,minecraft:custom_model_data=6421200,!minecraft:food]

item replace block ~ ~ ~ container.10 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,minecraft:custom_model_data=6421200,!minecraft:food]
item replace block ~ ~ ~ container.12 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,minecraft:custom_model_data=6421200,!minecraft:food]
item replace block ~ ~ ~ container.13 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,minecraft:custom_model_data=6421200,!minecraft:food]
item replace block ~ ~ ~ container.15 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,minecraft:custom_model_data=6421200,!minecraft:food]
item replace block ~ ~ ~ container.16 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,minecraft:custom_model_data=6421200,!minecraft:food]

item replace block ~ ~ ~ container.21 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,minecraft:custom_model_data=6421200,!minecraft:food]
item replace block ~ ~ ~ container.24 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,minecraft:custom_model_data=6421200,!minecraft:food]

execute if entity @s[tag=mechanization.errored] run item replace block ~ ~ ~ container.15 with minecraft:barrier[minecraft:item_name='{"translate":"lore.mechanization.alloy_furnace_error","italic":false,"color":"red"}',minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1]

# tank 1
scoreboard players set #tank mechanization.data 0
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.2 from block -30000000 0 3201 container.0
item replace block ~ ~ ~ container.11 from block -30000000 0 3201 container.0
item replace block ~ ~ ~ container.20 from block -30000000 0 3201 container.0
item modify block ~ ~ ~ container.2 mechanization:change_tank_ui_item
item modify block ~ ~ ~ container.20 mechanization:change_tank_ui_item

# tank 2
scoreboard players set #tank mechanization.data 1
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.5 from block -30000000 0 3201 container.0
item replace block ~ ~ ~ container.14 from block -30000000 0 3201 container.0
item replace block ~ ~ ~ container.23 from block -30000000 0 3201 container.0
item modify block ~ ~ ~ container.5 mechanization:change_tank_ui_item
item modify block ~ ~ ~ container.23 mechanization:change_tank_ui_item

# tank 3
scoreboard players set #tank mechanization.data 2
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.8 from block -30000000 0 3201 container.0
item replace block ~ ~ ~ container.17 from block -30000000 0 3201 container.0
item replace block ~ ~ ~ container.26 from block -30000000 0 3201 container.0
item modify block ~ ~ ~ container.8 mechanization:change_tank_ui_item
item modify block ~ ~ ~ container.26 mechanization:change_tank_ui_item

# energy bar
function mechanization:base/utils/generate_energy_bar_ui

# freeze hoppers
execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value 4
execute align xyz positioned ~ ~-1.5 ~ as @e[type=minecraft:hopper_minecart,dx=0,dy=0,dz=0] run data modify entity @s Enabled set value 0b

# exit gui
execute if block ~ ~ ~ minecraft:barrel[open=false] run function mechanization:base/utils/close_gui
