
# min
item replace block ~ ~ ~ container.0 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/number",minecraft:custom_model_data={floats:[0]}]
execute if score #min mechanization.data matches 0 if score #count mechanization.data matches ..3 run item replace block ~ ~ ~ container.0 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]

scoreboard players operation #display mechanization.data = #min mechanization.data
scoreboard players operation #display mechanization.data %= #cons.100 mechanization.data
scoreboard players operation #min mechanization.data /= #cons.100 mechanization.data
execute if score #min mechanization.data matches 0 if score #display mechanization.data matches ..9 run scoreboard players add #display mechanization.data 100
item modify block ~ ~ ~ container.0 {function:"minecraft:set_custom_model_data",count:1,floats:{values:[{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#display"},score:"mechanization.data"}],mode:"replace_all"}}

execute if score #count mechanization.data matches 1 run item replace block ~ ~ ~ container.10 from block ~ ~ ~ container.0
execute if score #count mechanization.data matches 2 run item replace block ~ ~ ~ container.11 from block ~ ~ ~ container.0
execute if score #count mechanization.data matches 3 run item replace block ~ ~ ~ container.12 from block ~ ~ ~ container.0
execute if score #count mechanization.data matches 4 run item replace block ~ ~ ~ container.13 from block ~ ~ ~ container.0

# max
item replace block ~ ~ ~ container.0 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/number",minecraft:custom_model_data={floats:[0]}]
execute if score #max mechanization.data matches 0 if score #count mechanization.data matches ..3 run item replace block ~ ~ ~ container.0 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]

scoreboard players operation #display mechanization.data = #max mechanization.data
scoreboard players operation #display mechanization.data %= #cons.100 mechanization.data
scoreboard players operation #max mechanization.data /= #cons.100 mechanization.data
execute if score #max mechanization.data matches 0 if score #display mechanization.data matches ..9 run scoreboard players add #display mechanization.data 100
item modify block ~ ~ ~ container.0 {function:"minecraft:set_custom_model_data",count:1,floats:{values:[{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#display"},score:"mechanization.data"}],mode:"replace_all"}}

execute if score #count mechanization.data matches 1 run item replace block ~ ~ ~ container.14 from block ~ ~ ~ container.0
execute if score #count mechanization.data matches 2 run item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.0
execute if score #count mechanization.data matches 3 run item replace block ~ ~ ~ container.16 from block ~ ~ ~ container.0
execute if score #count mechanization.data matches 4 run item replace block ~ ~ ~ container.17 from block ~ ~ ~ container.0

# loop
scoreboard players remove #count mechanization.data 1
execute if score #count mechanization.data matches 1.. run function mechanization:machines/blocks/machine_observer/gui_modify_3
