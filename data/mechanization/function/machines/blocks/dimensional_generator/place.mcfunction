
# Summon Entity & Init
execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.dimensional_generator", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "mechanization.rotatable", "energy.send", "smithed.block"], Rotation:[180.0f,0.0f], CustomName:'{"translate":"block.mechanization.dimensional_generator"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6422015}, Count:1b}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.dimensional_generator", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "mechanization.rotatable", "energy.send", "smithed.block"], Rotation:[270.0f,0.0f], CustomName:'{"translate":"block.mechanization.dimensional_generator"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6422015}, Count:1b}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=south] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.dimensional_generator", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "mechanization.rotatable", "energy.send", "smithed.block"], Rotation:[0.0f,0.0f], CustomName:'{"translate":"block.mechanization.dimensional_generator"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6422015}, Count:1b}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.dimensional_generator", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "mechanization.rotatable", "energy.send", "smithed.block"], Rotation:[90.0f,0.0f], CustomName:'{"translate":"block.mechanization.dimensional_generator"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6422015}, Count:1b}}

execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] run setblock ~ ~ ~ minecraft:furnace[facing=north]{CustomName:'[{"translate":"block.mechanization.dimensional_generator"}]'}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] run setblock ~ ~ ~ minecraft:furnace[facing=east]{CustomName:'[{"translate":"block.mechanization.dimensional_generator"}]'}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=south] run setblock ~ ~ ~ minecraft:furnace[facing=south]{CustomName:'[{"translate":"block.mechanization.dimensional_generator"}]'}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] run setblock ~ ~ ~ minecraft:furnace[facing=west]{CustomName:'[{"translate":"block.mechanization.dimensional_generator"}]'}

function mechanization:base/utils/init_machine
