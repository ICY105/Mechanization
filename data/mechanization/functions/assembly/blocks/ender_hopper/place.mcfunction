
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.ender_hopper", "smithed.block"], CustomName:'{"translate":"mech.block.ender_hopper"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6425004}, Count:1b}, ItemRotation:0, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] run setblock ~ ~ ~ minecraft:hopper[facing=south]{CustomName:'{"translate":"mech.block.ender_hopper","color":"dark_purple","italic":false}'}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] run setblock ~ ~ ~ minecraft:hopper[facing=west]{CustomName:'{"translate":"mech.block.ender_hopper","color":"dark_purple","italic":false}'}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=south] run setblock ~ ~ ~ minecraft:hopper[facing=north]{CustomName:'{"translate":"mech.block.ender_hopper","color":"dark_purple","italic":false}'}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] run setblock ~ ~ ~ minecraft:hopper[facing=east]{CustomName:'{"translate":"mech.block.ender_hopper","color":"dark_purple","italic":false}'}

