
# init
data modify storage mechanization:temp obj set value {slot1:{},slot2:{},slot3:{},tank_1:{},tank_2:{},tank_3:{}}
data modify storage mechanization:temp obj.slot1 set from block ~ ~ ~ Items[{Slot:0b}]
data modify storage mechanization:temp obj.slot2 set from block ~ ~ ~ Items[{Slot:9b}]
data modify storage mechanization:temp obj.slot3 set from block ~ ~ ~ Items[{Slot:18b}]
data modify storage mechanization:temp obj.tank_1 set from entity @s item.tag.fluids[0]
data modify storage mechanization:temp obj.tank_2 set from entity @s item.tag.fluids[1]
data modify storage mechanization:temp obj.tank_3 set from entity @s item.tag.fluids[2]
execute store result score #count.0 mechanization.data run data get storage mechanization:temp obj.slot1.Count
execute store result score #count.1 mechanization.data run data get storage mechanization:temp obj.slot2.Count
execute store result score #count.2 mechanization.data run data get storage mechanization:temp obj.slot3.Count

# Heavy Water
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score @s fluid.storage.0 matches 1000.. if data storage mechanization:temp obj.tank_1{id:"water"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.1 matches 1.. unless data storage mechanization:temp obj.tank_2{id:"water"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.2 matches 1.. unless data storage mechanization:temp obj.tank_3{id:"heavy_water"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.1 matches 3051.. run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.2 matches 3951.. run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 run function mechanization:nuclear/blocks/centrifuge/recipes/heavy_water

# cleanup
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get #count.0 mechanization.data
execute store result block ~ ~ ~ Items[{Slot:9b}].Count byte 1 run scoreboard players get #count.1 mechanization.data
execute store result block ~ ~ ~ Items[{Slot:18b}].Count byte 1 run scoreboard players get #count.2 mechanization.data
execute if score @s fluid.storage.0 matches 0 run data modify entity @s item.tag.fluids[0] set value {}
execute if score @s fluid.storage.1 matches 0 run data modify entity @s item.tag.fluids[1] set value {}
execute if score @s fluid.storage.2 matches 0 run data modify entity @s item.tag.fluids[2] set value {}
