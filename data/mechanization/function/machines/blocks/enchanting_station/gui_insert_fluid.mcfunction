
scoreboard players set #status mechanization.data 0
execute if score @s fluid.storage.0 matches 0 run scoreboard players set #status mechanization.data 1
execute if score @s fluid.storage.0 matches 0 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"experience"}]
execute if score @s fluid.storage.0 matches 0 run scoreboard players add @s fluid.storage.0 1

function mechanization:base/utils/fluid_slot_io/slot_io_6

execute if score #status mechanization.data matches 1 run scoreboard players remove @s fluid.storage.0 1
execute if score #status mechanization.data matches 1 if score @s fluid.storage.0 matches 0 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set value {}
