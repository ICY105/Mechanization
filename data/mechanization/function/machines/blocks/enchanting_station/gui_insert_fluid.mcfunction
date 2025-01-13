
scoreboard players add @s fluid.storage.0 1
scoreboard players add @s fluid.max_storage.0 1
execute if score @s fluid.storage.0 matches 1 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"experience"}]

function mechanization:base/utils/fluid_slot_io/slot_io_6

scoreboard players remove @s fluid.storage.0 1
scoreboard players remove @s fluid.max_storage.0 1
execute if score @s fluid.storage.0 matches 0 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set value {}
