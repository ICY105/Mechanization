
## @s mechanization.data > selected option
## @s mechanization.fluid.in > min value
## @s mechanization.fluid.out > max value

# hopper input
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:hopper run data modify block ~ ~ ~ TransferCooldown set value 30

# cleanup
execute unless score @s mechanization.data matches -1.. run scoreboard players set @s mechanization.data -1
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine
execute unless block ~ ~ ~ minecraft:barrel run return 0

# exit early
execute if block ~ ~ ~ minecraft:barrel[open=true] run return 0
execute if score @s mechanization.data matches -1 run return 0

# processing
data modify storage mechanization:temp list set value []
execute positioned ^ ^ ^1 run function mechanization:machines/blocks/machine_observer/observe

data modify storage mechanization:temp obj set value {index: 0}
execute store result storage mechanization:temp obj.index int 1 run scoreboard players get @s mechanization.data
function mechanization:machines/blocks/machine_observer/m.get_entry with storage mechanization:temp obj

execute if score @s mechanization.data matches -1 run return 0

execute store result score #min mechanization.data run data get storage mechanization:temp obj.min_quantity
execute store result score #max mechanization.data run data get storage mechanization:temp obj.max_quantity

execute if score @s mechanization.fluid.in < #min mechanization.data run scoreboard players operation @s mechanization.fluid.in = #min mechanization.data
execute if score @s mechanization.fluid.out > #max mechanization.data run scoreboard players operation @s mechanization.fluid.out = #max mechanization.data

scoreboard players operation #min mechanization.data = @s mechanization.fluid.in
scoreboard players operation #max mechanization.data = @s mechanization.fluid.out

execute store result score #quantity mechanization.data run data get storage mechanization:temp obj.quantity

scoreboard players set #zero mechanization.data 0
execute if score #min mechanization.data = #quantity mechanization.data run scoreboard players set #zero mechanization.data 1

scoreboard players operation #max mechanization.data -= #min mechanization.data
scoreboard players operation #quantity mechanization.data -= #min mechanization.data
scoreboard players operation #quantity mechanization.data *= #cons.14 mechanization.data
scoreboard players operation #quantity mechanization.data /= #max mechanization.data

execute if score #zero mechanization.data matches 0 run scoreboard players add #quantity mechanization.data 1

data remove block ~ ~ ~ Items
execute if score #quantity mechanization.data matches 1.. run item replace block ~ ~ ~ container.0 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
execute if score #quantity mechanization.data matches 2.. run item replace block ~ ~ ~ container.1 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[0]}]
execute if score #quantity mechanization.data matches 2.. run item replace block ~ ~ ~ container.2 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[1]}]
execute if score #quantity mechanization.data matches 3.. run item replace block ~ ~ ~ container.3 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[2]}]
execute if score #quantity mechanization.data matches 3.. run item replace block ~ ~ ~ container.4 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[3]}]
execute if score #quantity mechanization.data matches 4.. run item replace block ~ ~ ~ container.5 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[9]}]
execute if score #quantity mechanization.data matches 4.. run item replace block ~ ~ ~ container.6 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[10]}]
execute if score #quantity mechanization.data matches 5.. run item replace block ~ ~ ~ container.7 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[11]}]
execute if score #quantity mechanization.data matches 5.. run item replace block ~ ~ ~ container.8 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[12]}]

execute if score #quantity mechanization.data matches 6.. run item replace block ~ ~ ~ container.9 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
execute if score #quantity mechanization.data matches 6.. run item replace block ~ ~ ~ container.10 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
execute if score #quantity mechanization.data matches 7.. run item replace block ~ ~ ~ container.11 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
execute if score #quantity mechanization.data matches 7.. run item replace block ~ ~ ~ container.12 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
execute if score #quantity mechanization.data matches 8.. run item replace block ~ ~ ~ container.13 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
execute if score #quantity mechanization.data matches 8.. run item replace block ~ ~ ~ container.14 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
execute if score #quantity mechanization.data matches 9.. run item replace block ~ ~ ~ container.15 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
execute if score #quantity mechanization.data matches 9.. run item replace block ~ ~ ~ container.16 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
execute if score #quantity mechanization.data matches 10.. run item replace block ~ ~ ~ container.17 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]

execute if score #quantity mechanization.data matches 10.. run item replace block ~ ~ ~ container.18 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
execute if score #quantity mechanization.data matches 11.. run item replace block ~ ~ ~ container.19 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[5]}]
execute if score #quantity mechanization.data matches 11.. run item replace block ~ ~ ~ container.20 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[6]}]
execute if score #quantity mechanization.data matches 12.. run item replace block ~ ~ ~ container.21 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[7]}]
execute if score #quantity mechanization.data matches 12.. run item replace block ~ ~ ~ container.22 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[8]}]
execute if score #quantity mechanization.data matches 13.. run item replace block ~ ~ ~ container.23 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[13]}]
execute if score #quantity mechanization.data matches 13.. run item replace block ~ ~ ~ container.24 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[14]}]
execute if score #quantity mechanization.data matches 14.. run item replace block ~ ~ ~ container.25 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[15]}]
execute if score #quantity mechanization.data matches 15.. run item replace block ~ ~ ~ container.26 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/count_arrow",minecraft:custom_model_data={floats:[16]}]
