
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.compressor"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:assembly/block/compressor"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.compressor", "mechanization.redstone_control", "mechanization.rotatable", "mechanization.observable", "energy.receive", "smithed.block"]}

execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~90 ~
execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~180 ~
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~270 ~

setblock ~ ~ ~ minecraft:dropper[facing=south]{CustomName:{"translate":"block.mechanization.compressor","italic":false}}

function mechanization:base/utils/init_machine
