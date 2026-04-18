
item replace block ~ ~ ~ container.0 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:max_stack_size=99,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
data modify block ~ ~ ~ Items[0].components."minecraft:item_model" set from storage mechanization:temp list[0].item_model
data modify block ~ ~ ~ Items[0].components."minecraft:item_name" set from storage mechanization:temp list[0].name
execute store result score #count mechanization.data run data get storage mechanization:temp list[0].count
execute if score #count mechanization.data matches 2.. run item modify block ~ ~ ~ container.0 {function:"minecraft:set_count",count:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#count"},score:"mechanization.data"}}

execute if score #slot mechanization.data matches 0 run item replace block ~ ~ ~ container.2 from block ~ ~ ~ container.0
execute if score #slot mechanization.data matches 1 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.0
execute if score #slot mechanization.data matches 2 run item replace block ~ ~ ~ container.4 from block ~ ~ ~ container.0
execute if score #slot mechanization.data matches 3 run item replace block ~ ~ ~ container.5 from block ~ ~ ~ container.0
execute if score #slot mechanization.data matches 4 run item replace block ~ ~ ~ container.6 from block ~ ~ ~ container.0

execute if score #slot mechanization.data matches 5 run item replace block ~ ~ ~ container.11 from block ~ ~ ~ container.0
execute if score #slot mechanization.data matches 6 run item replace block ~ ~ ~ container.12 from block ~ ~ ~ container.0
execute if score #slot mechanization.data matches 7 run item replace block ~ ~ ~ container.13 from block ~ ~ ~ container.0
execute if score #slot mechanization.data matches 8 run item replace block ~ ~ ~ container.14 from block ~ ~ ~ container.0
execute if score #slot mechanization.data matches 9 run item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.0

execute if score #slot mechanization.data matches 10 run item replace block ~ ~ ~ container.20 from block ~ ~ ~ container.0
execute if score #slot mechanization.data matches 11 run item replace block ~ ~ ~ container.21 from block ~ ~ ~ container.0
execute if score #slot mechanization.data matches 12 run item replace block ~ ~ ~ container.22 from block ~ ~ ~ container.0
execute if score #slot mechanization.data matches 13 run item replace block ~ ~ ~ container.23 from block ~ ~ ~ container.0
execute if score #slot mechanization.data matches 14 run item replace block ~ ~ ~ container.24 from block ~ ~ ~ container.0

scoreboard players add #slot mechanization.data 1
data remove storage mechanization:temp list[0]
execute if data storage mechanization:temp list[0] run function mechanization:machines/blocks/machine_observer/gui_select_3
