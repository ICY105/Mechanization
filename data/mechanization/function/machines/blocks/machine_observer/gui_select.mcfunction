
# select option
execute if entity @s[tag=mechanization.ui.select] run function mechanization:machines/blocks/machine_observer/gui_select_2
execute if score @s mechanization.data matches 0.. run tag @s remove mechanization.ui.select
execute if score @s mechanization.data matches 0.. run return 0

tag @s add mechanization.ui.select

# get options
data modify storage mechanization:temp list set value []
execute positioned ^ ^ ^1 run function mechanization:machines/blocks/machine_observer/observe

# fill in items
data remove block ~ ~ ~ Items

scoreboard players set #slot mechanization.data 0
execute if data storage mechanization:temp list[0] run function mechanization:machines/blocks/machine_observer/gui_select_3

item replace block ~ ~ ~ container.0 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
item replace block ~ ~ ~ container.1 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.2 * run item replace block ~ ~ ~ container.2 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.3 * run item replace block ~ ~ ~ container.3 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.4 * run item replace block ~ ~ ~ container.4 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.5 * run item replace block ~ ~ ~ container.5 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.6 * run item replace block ~ ~ ~ container.6 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
item replace block ~ ~ ~ container.7 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
item replace block ~ ~ ~ container.8 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]

item replace block ~ ~ ~ container.9 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
item replace block ~ ~ ~ container.10 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.11 * run item replace block ~ ~ ~ container.11 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.12 * run item replace block ~ ~ ~ container.12 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.13 * run item replace block ~ ~ ~ container.13 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.14 * run item replace block ~ ~ ~ container.14 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.15 * run item replace block ~ ~ ~ container.15 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
item replace block ~ ~ ~ container.16 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
item replace block ~ ~ ~ container.17 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]

item replace block ~ ~ ~ container.18 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
item replace block ~ ~ ~ container.19 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.20 * run item replace block ~ ~ ~ container.20 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.21 * run item replace block ~ ~ ~ container.21 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.22 * run item replace block ~ ~ ~ container.22 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.23 * run item replace block ~ ~ ~ container.23 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
execute unless items block ~ ~ ~ container.24 * run item replace block ~ ~ ~ container.24 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
item replace block ~ ~ ~ container.25 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
item replace block ~ ~ ~ container.26 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
