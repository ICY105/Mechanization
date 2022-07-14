
# data modify storage du:temp obj set from block ~ ~ ~ Items[{tag:{mech_itemid:4100}}]
# data modify storage du:temp obj.Slot set value 16
# data modify block ~ ~ ~ Items append from storage du:temp obj

# execute if data block ~ ~ ~ Items[{id:"minecraft:white_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424909
# execute if data block ~ ~ ~ Items[{id:"minecraft:orange_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424910
# execute if data block ~ ~ ~ Items[{id:"minecraft:magenta_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424911
# execute if data block ~ ~ ~ Items[{id:"minecraft:light_blue_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424912
# execute if data block ~ ~ ~ Items[{id:"minecraft:yellow_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424913
# execute if data block ~ ~ ~ Items[{id:"minecraft:lime_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424914
# execute if data block ~ ~ ~ Items[{id:"minecraft:pink_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424915
# execute if data block ~ ~ ~ Items[{id:"minecraft:gray_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424916
# execute if data block ~ ~ ~ Items[{id:"minecraft:light_gray_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424917
# execute if data block ~ ~ ~ Items[{id:"minecraft:cyan_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424918
# execute if data block ~ ~ ~ Items[{id:"minecraft:purple_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424919
# execute if data block ~ ~ ~ Items[{id:"minecraft:blue_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424920
# execute if data block ~ ~ ~ Items[{id:"minecraft:brown_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424921
# execute if data block ~ ~ ~ Items[{id:"minecraft:green_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424922
# execute if data block ~ ~ ~ Items[{id:"minecraft:red_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424923
# execute if data block ~ ~ ~ Items[{id:"minecraft:black_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424924

scoreboard players set #recipe mechanization.data -1
execute if score @s smithed.data matches 0 if score count smithed.data matches 2 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, tag:{ mechanization:{id:"energy_saber"} }}] run scoreboard players set #recipe mechanization.data 0

execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:white_dye"}] run scoreboard players set #recipe mechanization.data 1
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:orange_dye"}] run scoreboard players set #recipe mechanization.data 2
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:magenta_dye"}] run scoreboard players set #recipe mechanization.data 3
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:light_blue_dye"}] run scoreboard players set #recipe mechanization.data 4
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:yellow_dye"}] run scoreboard players set #recipe mechanization.data 5
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:lime_dye"}] run scoreboard players set #recipe mechanization.data 6
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:pink_dye"}] run scoreboard players set #recipe mechanization.data 7
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:gray_dye"}] run scoreboard players set #recipe mechanization.data 8
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:light_gray_dye"}] run scoreboard players set #recipe mechanization.data 9
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:cyan_dye"}] run scoreboard players set #recipe mechanization.data 10
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:purple_dye"}] run scoreboard players set #recipe mechanization.data 11
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:blue_dye"}] run scoreboard players set #recipe mechanization.data 12
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:brown_dye"}] run scoreboard players set #recipe mechanization.data 13
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:green_dye"}] run scoreboard players set #recipe mechanization.data 14
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:red_dye"}] run scoreboard players set #recipe mechanization.data 15
execute if score #recipe mechanization.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe[{Count:1b, id:"minecraft:black_dye"}] run scoreboard players set #recipe mechanization.data 16

execute if score #recipe mechanization.data matches 1.. run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{tag:{ mechanization:{id:"energy_saber"} }}]
execute if score #recipe mechanization.data matches 1.. run data modify storage mechanization:temp obj.Slot set value 16
execute if score #recipe mechanization.data matches 1.. run data modify block ~ ~ ~ Items append from storage mechanization:temp obj

execute if score #recipe mechanization.data matches 1 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424909
execute if score #recipe mechanization.data matches 2 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424910
execute if score #recipe mechanization.data matches 3 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424911
execute if score #recipe mechanization.data matches 4 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424912
execute if score #recipe mechanization.data matches 5 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424913
execute if score #recipe mechanization.data matches 6 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424914
execute if score #recipe mechanization.data matches 7 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424915
execute if score #recipe mechanization.data matches 8 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424916
execute if score #recipe mechanization.data matches 9 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424917
execute if score #recipe mechanization.data matches 10 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424918
execute if score #recipe mechanization.data matches 11 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424919
execute if score #recipe mechanization.data matches 12 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424920
execute if score #recipe mechanization.data matches 13 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424921
execute if score #recipe mechanization.data matches 14 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424922
execute if score #recipe mechanization.data matches 15 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424923
execute if score #recipe mechanization.data matches 16 run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424924
