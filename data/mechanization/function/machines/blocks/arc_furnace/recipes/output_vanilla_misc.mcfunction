
#check recipes
execute if score @s fluid.storage.0 matches 1..3000 if data storage mechanization:temp obj.input_item{id:"minecraft:cobblestone"} if data storage mechanization:temp obj.fluid_item{id:"lava"} run scoreboard players add @s fluid.storage.0 1000
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:cobblestone"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:cobblestone"} run scoreboard players add @s fluid.storage.0 1000

execute if score @s fluid.storage.0 matches 1..3000 if data storage mechanization:temp obj.input_item{id:"minecraft:stone"} if data storage mechanization:temp obj.fluid_item{id:"lava"} run scoreboard players add @s fluid.storage.0 1000
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:stone"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:stone"} run scoreboard players add @s fluid.storage.0 1000

execute if score @s fluid.storage.0 matches 1..3000 if data storage mechanization:temp obj.input_item{id:"minecraft:deepslate"} if data storage mechanization:temp obj.fluid_item{id:"lava"} run scoreboard players add @s fluid.storage.0 1000
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:deepslate"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:deepslate"} run scoreboard players add @s fluid.storage.0 1000

execute if score @s fluid.storage.0 matches 1..3000 if data storage mechanization:temp obj.input_item{id:"minecraft:cobbled_deepslate"} if data storage mechanization:temp obj.fluid_item{id:"lava"} run scoreboard players add @s fluid.storage.0 1000
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:cobbled_deepslate"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:cobbled_deepslate"} run scoreboard players add @s fluid.storage.0 1000

execute if score @s fluid.storage.0 matches 1..3000 if data storage mechanization:temp obj.input_item{id:"minecraft:andesite"} if data storage mechanization:temp obj.fluid_item{id:"lava"} run scoreboard players add @s fluid.storage.0 1000
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:andesite"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:andesite"} run scoreboard players add @s fluid.storage.0 1000

execute if score @s fluid.storage.0 matches 1..3000 if data storage mechanization:temp obj.input_item{id:"minecraft:diorite"} if data storage mechanization:temp obj.fluid_item{id:"lava"} run scoreboard players add @s fluid.storage.0 1000
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:diorite"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:diorite"} run scoreboard players add @s fluid.storage.0 1000

execute if score @s fluid.storage.0 matches 1..3000 if data storage mechanization:temp obj.input_item{id:"minecraft:granite"} if data storage mechanization:temp obj.fluid_item{id:"lava"} run scoreboard players add @s fluid.storage.0 1000
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:granite"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:granite"} run scoreboard players add @s fluid.storage.0 1000

execute if score @s fluid.storage.0 matches 1..3000 if data storage mechanization:temp obj.input_item{id:"minecraft:netherrack"} if data storage mechanization:temp obj.fluid_item{id:"lava"} run scoreboard players add @s fluid.storage.0 1000
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:netherrack"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:netherrack"} run scoreboard players add @s fluid.storage.0 1000

execute if score @s fluid.storage.0 matches 1..3000 if data storage mechanization:temp obj.input_item{id:"minecraft:magma_block"} if data storage mechanization:temp obj.fluid_item{id:"lava"} run scoreboard players add @s fluid.storage.0 1000
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:magma_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:magma_block"} run scoreboard players add @s fluid.storage.0 1000

execute if score @s fluid.storage.0 matches 1..3000 if data storage mechanization:temp obj.input_item{id:"minecraft:obsidian"} if data storage mechanization:temp obj.fluid_item{id:"lava"} run scoreboard players add @s fluid.storage.0 1000
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:obsidian"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:obsidian"} run scoreboard players add @s fluid.storage.0 1000

execute if score @s fluid.storage.0 matches 1..3999 if data storage mechanization:temp obj.input_item{id:"minecraft:sculk"} if data storage mechanization:temp obj.fluid_item{id:"experience"} run scoreboard players add @s fluid.storage.0 1
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:sculk"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"experience"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:sculk"} run scoreboard players add @s fluid.storage.0 1

execute if score @s fluid.storage.0 matches 1..3995 if data storage mechanization:temp obj.input_item{id:"minecraft:sculk_catalyst"} if data storage mechanization:temp obj.fluid_item{id:"experience"} run scoreboard players add @s fluid.storage.0 5
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:sculk_catalyst"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"experience"}]
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:sculk_catalyst"} run scoreboard players add @s fluid.storage.0 5
