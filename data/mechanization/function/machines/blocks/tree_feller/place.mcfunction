
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.tree_feller"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:machines/block/tree_feller"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.tree_feller", "mechanization.rotatable", "mechanization.upgradable", "mechanization.observable", "mechanization.mufflable", "mechanization.rotatable", "mechanization.has_block_hitbox", "energy.receive", "smithed.block"]}

execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~90 ~
execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~180 ~
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~270 ~

summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier1","mechanization.block_hitbox.tree_feller"]}
setblock ~ ~ ~ minecraft:barrier

function mechanization:base/utils/init_machine

