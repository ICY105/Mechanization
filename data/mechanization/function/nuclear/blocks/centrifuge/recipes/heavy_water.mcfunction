
execute unless score @s fluid.storage.1 matches 1.. run data modify entity @s item.components."minecraft:custom_data".fluids[1] set from storage fluid:definitions fluid_data[{id:"water"}]
execute unless score @s fluid.storage.2 matches 1.. run data modify entity @s item.components."minecraft:custom_data".fluids[2] set from storage fluid:definitions fluid_data[{id:"heavy_water"}]

scoreboard players remove @s fluid.storage.0 1000
scoreboard players add @s fluid.storage.1 950
scoreboard players add @s fluid.storage.2 50
