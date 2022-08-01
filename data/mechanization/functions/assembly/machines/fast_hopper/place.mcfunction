
# Summon Entity & Init
summon minecraft:glow_item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.fast_hopper", "smithed.block"], CustomName:'{"translate":"mech.block.fast_hopper"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6425005}, Count:1b}, ItemRotation:4, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] run setblock ~ ~ ~ minecraft:hopper[facing=south]{CustomName:'{"translate":"mech.block.fast_hopper","color":"dark_red","italic":false}'}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] run setblock ~ ~ ~ minecraft:hopper[facing=west]{CustomName:'{"translate":"mech.block.fast_hopper","color":"dark_red","italic":false}'}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=south] run setblock ~ ~ ~ minecraft:hopper[facing=north]{CustomName:'{"translate":"mech.block.fast_hopper","color":"dark_red","italic":false}'}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] run setblock ~ ~ ~ minecraft:hopper[facing=east]{CustomName:'{"translate":"mech.block.fast_hopper","color":"dark_red","italic":false}'}
