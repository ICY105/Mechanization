
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.mob_grinder"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:machines/block/mob_grinder"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.mob_grinder", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.observable", "mechanization.has_block_hitbox", "mechanization.rotatable", "fluid.tank", "energy.receive", "smithed.block"]}

execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~90 ~
execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~180 ~
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~270 ~

summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier2","mechanization.block_hitbox.mob_grinder"]}
setblock ~ ~ ~ minecraft:barrier

# init data
scoreboard players set #fluid.io mechanization.data -1
scoreboard players set #fluid.in mechanization.data 0
scoreboard players set #fluid.out mechanization.data -1
scoreboard players set #fluid.max_storage.0 mechanization.data 4000
scoreboard players set #fluid.max_storage.1 mechanization.data 0
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
scoreboard players set @n[type=minecraft:item_display,tag=mechanization.new,distance=..2] fluid.io.up -1
scoreboard players set @n[type=minecraft:item_display,tag=mechanization.new,distance=..2] fluid.io.down -1
function mechanization:base/utils/init_machine
