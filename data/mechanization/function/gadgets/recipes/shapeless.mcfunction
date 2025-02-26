
scoreboard players set #recipe mechanization.data -1

data modify storage mechanization:test list set from storage smithed.crafter:input recipe

execute if score @s smithed.data matches 0 if score count smithed.data matches 2 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, components:{"minecraft:custom_data":{ mechanization:{id:"energy_saber"} }}}] run scoreboard players set #recipe mechanization.data 0

execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:white_dye"}] run scoreboard players set #recipe mechanization.data 1
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:orange_dye"}] run scoreboard players set #recipe mechanization.data 2
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:magenta_dye"}] run scoreboard players set #recipe mechanization.data 3
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:light_blue_dye"}] run scoreboard players set #recipe mechanization.data 4
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:yellow_dye"}] run scoreboard players set #recipe mechanization.data 5
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:lime_dye"}] run scoreboard players set #recipe mechanization.data 6
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:pink_dye"}] run scoreboard players set #recipe mechanization.data 7
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:gray_dye"}] run scoreboard players set #recipe mechanization.data 8
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:light_gray_dye"}] run scoreboard players set #recipe mechanization.data 9
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:cyan_dye"}] run scoreboard players set #recipe mechanization.data 10
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:purple_dye"}] run scoreboard players set #recipe mechanization.data 11
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:blue_dye"}] run scoreboard players set #recipe mechanization.data 12
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:brown_dye"}] run scoreboard players set #recipe mechanization.data 13
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:green_dye"}] run scoreboard players set #recipe mechanization.data 14
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:red_dye"}] run scoreboard players set #recipe mechanization.data 15
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{count: 1, id:"minecraft:black_dye"}] run scoreboard players set #recipe mechanization.data 16

execute if score #recipe mechanization.data matches 1.. run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{components:{"minecraft:custom_data":{ mechanization:{id:"energy_saber"} }}}]
execute if score #recipe mechanization.data matches 1.. run data modify storage mechanization:temp obj.Slot set value 16b
execute if score #recipe mechanization.data matches 1.. run data modify storage mechanization:test obj set from storage mechanization:temp obj
execute if score #recipe mechanization.data matches 1.. run data modify block ~ ~ ~ Items append from storage mechanization:temp obj
execute if score #recipe mechanization.data matches 1.. run data modify block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data" set value {floats:[0]}
execute if score #recipe mechanization.data matches 1.. store result block ~ ~ ~ Items[{Slot:16b}].components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players get #recipe mechanization.data
execute if score #recipe mechanization.data matches 1.. run data modify storage smithed.crafter:input flags set value ["consume_tools"] 