
execute if score @s fluid.storage.0 matches ..0 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"steam"}]
execute if score @s fluid.storage.0 < @s fluid.max_storage.0 run scoreboard players operation @s fluid.storage.0 += #steam mechanization.data
