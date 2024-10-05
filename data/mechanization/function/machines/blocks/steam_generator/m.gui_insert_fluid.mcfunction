
scoreboard players set #status mechanization.data 0
$execute if score @s fluid.storage.$(tank) matches 0 run scoreboard players set #status mechanization.data 1
$execute if score @s fluid.storage.$(tank) matches 0 run data modify entity @s item.components."minecraft:custom_data".fluids[$(tank)] set from storage fluid:definitions fluid_data[{id:"$(id)"}]
$execute if score @s fluid.storage.$(tank) matches 0 run scoreboard players add @s fluid.storage.$(tank) 1

$function mechanization:base/utils/fluid_slot_io/slot_io_$(slot)

$execute if score #status mechanization.data matches 1 run scoreboard players remove @s fluid.storage.$(tank) 1
$execute if score #status mechanization.data matches 1 if score @s fluid.storage.$(tank) matches 0 run data modify entity @s item.components."minecraft:custom_data".fluids[$(tank)] set value {}
