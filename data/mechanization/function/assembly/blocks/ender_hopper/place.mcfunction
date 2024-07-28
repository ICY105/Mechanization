
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.ender_hopper", "smithed.block"], CustomName:'{"translate":"block.mechanization.ender_hopper"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6425004}, Count:1b}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] run setblock ~ ~ ~ minecraft:hopper[facing=south]{CustomName:'{"translate":"block.mechanization.ender_hopper","color":"dark_purple","italic":false}'}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] run setblock ~ ~ ~ minecraft:hopper[facing=west]{CustomName:'{"translate":"block.mechanization.ender_hopper","color":"dark_purple","italic":false}'}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=south] run setblock ~ ~ ~ minecraft:hopper[facing=north]{CustomName:'{"translate":"block.mechanization.ender_hopper","color":"dark_purple","italic":false}'}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] run setblock ~ ~ ~ minecraft:hopper[facing=east]{CustomName:'{"translate":"block.mechanization.ender_hopper","color":"dark_purple","italic":false}'}

function mechanization:base/utils/init_machine
