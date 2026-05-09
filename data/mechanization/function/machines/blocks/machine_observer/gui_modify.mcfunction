
# select option
execute if entity @s[tag=mechanization.ui.modify] run function mechanization:machines/blocks/machine_observer/gui_modify_2
execute if score @s mechanization.data matches -1 run tag @s remove mechanization.ui.modify
execute if score @s mechanization.data matches -1 run return 0
tag @s add mechanization.ui.modify

# get options
data modify storage mechanization:temp list set value []
execute positioned ^ ^ ^1 run function mechanization:machines/blocks/machine_observer/observe

data modify storage mechanization:temp obj set value {index: 0}
execute store result storage mechanization:temp obj.index int 1 run scoreboard players get @s mechanization.data
function mechanization:machines/blocks/machine_observer/m.get_entry with storage mechanization:temp obj
execute if score @s mechanization.data matches -1 run tag @s remove mechanization.ui.modify
execute if score @s mechanization.data matches -1 run return 0

execute store result score #min mechanization.data run data get storage mechanization:temp obj.min_quantity
execute store result score #max mechanization.data run data get storage mechanization:temp obj.max_quantity

execute if score @s mechanization.fluid.in < #min mechanization.data run scoreboard players operation @s mechanization.fluid.in = #min mechanization.data
execute if score @s mechanization.fluid.out > #max mechanization.data run scoreboard players operation @s mechanization.fluid.out = #max mechanization.data
execute if score @s mechanization.fluid.in > @s mechanization.fluid.out run scoreboard players operation @s mechanization.fluid.out = @s mechanization.fluid.in
execute if score @s mechanization.fluid.in = @s mechanization.fluid.out run scoreboard players add @s mechanization.fluid.out 1

# fill in items
data remove block ~ ~ ~ Items

item replace block ~ ~ ~ container.9 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
data modify block ~ ~ ~ Items[{Slot: 9b}].components."minecraft:item_model" set from storage mechanization:temp obj.item_model
data modify block ~ ~ ~ Items[{Slot: 9b}].components."minecraft:item_name" set from storage mechanization:temp obj.name

item replace block ~ ~ ~ container.1 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[0]},minecraft:item_name={"translate":"text.mechanization.machine_observer.min","with":[{"text":"+1"}]}]
item replace block ~ ~ ~ container.2 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[1]},minecraft:item_name={"translate":"text.mechanization.machine_observer.min","with":[{"text":"+10"}]}]
item replace block ~ ~ ~ container.3 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[2]},minecraft:item_name={"translate":"text.mechanization.machine_observer.min","with":[{"text":"+100"}]}]
item replace block ~ ~ ~ container.4 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[3]},minecraft:item_name={"translate":"text.mechanization.machine_observer.min","with":[{"text":"+1000"}]}]
item replace block ~ ~ ~ container.5 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[8]},minecraft:item_name={"translate":"text.mechanization.machine_observer.max","with":[{"text":"+1"}]}]
item replace block ~ ~ ~ container.6 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[9]},minecraft:item_name={"translate":"text.mechanization.machine_observer.max","with":[{"text":"+10"}]}]
item replace block ~ ~ ~ container.7 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[10]},minecraft:item_name={"translate":"text.mechanization.machine_observer.max","with":[{"text":"+100"}]}]
item replace block ~ ~ ~ container.8 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[11]},minecraft:item_name={"translate":"text.mechanization.machine_observer.max","with":[{"text":"+1000"}]}]

item replace block ~ ~ ~ container.18 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
item replace block ~ ~ ~ container.19 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[4]},minecraft:item_name={"translate":"text.mechanization.machine_observer.min","with":[{"text":"-1"}]}]
item replace block ~ ~ ~ container.20 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[5]},minecraft:item_name={"translate":"text.mechanization.machine_observer.min","with":[{"text":"-10"}]}]
item replace block ~ ~ ~ container.21 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[6]},minecraft:item_name={"translate":"text.mechanization.machine_observer.min","with":[{"text":"-100"}]}]
item replace block ~ ~ ~ container.22 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[7]},minecraft:item_name={"translate":"text.mechanization.machine_observer.min","with":[{"text":"-1000"}]}]
item replace block ~ ~ ~ container.23 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[12]},minecraft:item_name={"translate":"text.mechanization.machine_observer.max","with":[{"text":"-1"}]}]
item replace block ~ ~ ~ container.24 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[13]},minecraft:item_name={"translate":"text.mechanization.machine_observer.max","with":[{"text":"-10"}]}]
item replace block ~ ~ ~ container.25 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[14]},minecraft:item_name={"translate":"text.mechanization.machine_observer.max","with":[{"text":"-100"}]}]
item replace block ~ ~ ~ container.26 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[15]},minecraft:item_name={"translate":"text.mechanization.machine_observer.max","with":[{"text":"-1000"}]}]

scoreboard players set #count mechanization.data 4
scoreboard players operation #min mechanization.data = @s mechanization.fluid.in
scoreboard players operation #max mechanization.data = @s mechanization.fluid.out
function mechanization:machines/blocks/machine_observer/gui_modify_3

item replace block ~ ~ ~ container.0 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
