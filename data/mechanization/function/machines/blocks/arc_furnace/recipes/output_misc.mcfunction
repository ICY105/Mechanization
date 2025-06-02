
# custom ingot
execute if score @s fluid.storage.0 matches 1..3928 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gem.crystal_composite if data storage mechanization:temp obj.fluid_item{id:"molten_crystal_composite"} run scoreboard players add @s fluid.storage.0 72
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gem.crystal_composite run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_crystal_composite"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item.components."minecraft:custom_data".smithed.dict.gem.crystal_composite run scoreboard players add @s fluid.storage.0 72
