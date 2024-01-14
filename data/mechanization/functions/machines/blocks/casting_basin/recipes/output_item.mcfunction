
scoreboard players set #success mechanization.data 0
execute if score @s fluid.storage.0 matches 128.. if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} if data storage mechanization:temp obj.output_item{id:"minecraft:carrot"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #count_2 mechanization.data matches 1.. unless data storage mechanization:temp obj.output_item_2{id:"minecraft:golden_carrot"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score #count_2 mechanization.data matches 0 run item replace block ~ ~ ~ container.21 with minecraft:golden_carrot
execute if score #success mechanization.data matches 1 if score #count_2 mechanization.data matches 1.. run item modify block ~ ~ ~ container.21 mechanization:increment_count
execute if score #success mechanization.data matches 1 run item modify block ~ ~ ~ container.12 mechanization:decrement_count
execute if score #success mechanization.data matches 1 run scoreboard players remove @s fluid.storage.0 128

scoreboard players set #success mechanization.data 0
execute if score @s fluid.storage.0 matches 1152.. if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} if data storage mechanization:temp obj.output_item{id:"minecraft:apple"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #count_2 mechanization.data matches 1.. unless data storage mechanization:temp obj.output_item_2{id:"minecraft:golden_apple"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score #count_2 mechanization.data matches 0 run item replace block ~ ~ ~ container.21 with minecraft:golden_apple
execute if score #success mechanization.data matches 1 if score #count_2 mechanization.data matches 1.. run item modify block ~ ~ ~ container.21 mechanization:increment_count
execute if score #success mechanization.data matches 1 run item modify block ~ ~ ~ container.12 mechanization:decrement_count
execute if score #success mechanization.data matches 1 run scoreboard players remove @s fluid.storage.0 1152

scoreboard players set #success mechanization.data 0
execute if score @s fluid.storage.0 matches 1152.. if data storage mechanization:temp obj.fluid_item{id:"molten_uranium"} if data storage mechanization:temp obj.output_item.tag.mechanization{id:"fuel_rod"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #count_2 mechanization.data matches 1.. run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 run loot replace block ~ ~ ~ container.21 loot mechanization:nuclear/uranium_fuel_rod
execute if score #success mechanization.data matches 1 run item modify block ~ ~ ~ container.12 mechanization:decrement_count
execute if score #success mechanization.data matches 1 run scoreboard players remove @s fluid.storage.0 1152

scoreboard players set #success mechanization.data 0
execute if score @s fluid.storage.0 matches 1152.. if data storage mechanization:temp obj.fluid_item{id:"molten_mox_fuel"} if data storage mechanization:temp obj.output_item.tag.mechanization{id:"fuel_rod"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #count_2 mechanization.data matches 1.. run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 run loot replace block ~ ~ ~ container.21 loot mechanization:nuclear/mox_fuel_rod
execute if score #success mechanization.data matches 1 run item modify block ~ ~ ~ container.12 mechanization:decrement_count
execute if score #success mechanization.data matches 1 run scoreboard players remove @s fluid.storage.0 1152
