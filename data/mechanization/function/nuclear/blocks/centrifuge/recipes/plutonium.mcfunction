
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if data storage mechanization:temp obj.slot1.components."minecraft:custom_data".mechanization{id:"spent_fuel_rod"} store success score #success mechanization.data run scoreboard players remove #count.0 mechanization.data 1
execute if score #success mechanization.data matches 0 if data storage mechanization:temp obj.slot2.components."minecraft:custom_data".mechanization{id:"spent_fuel_rod"} store success score #success mechanization.data run scoreboard players remove #count.1 mechanization.data 1
execute if score #success mechanization.data matches 0 if data storage mechanization:temp obj.slot3.components."minecraft:custom_data".mechanization{id:"spent_fuel_rod"} store success score #success mechanization.data run scoreboard players remove #count.2 mechanization.data 1

execute unless score @s fluid.storage.1 matches 1.. run data modify entity @s item.components."minecraft:custom_data".fluids[1] set from storage fluid:definitions fluid_data[{id:"molten_plutonium"}]

scoreboard players operation @s fluid.storage.1 += #enrichment mechanization.data
