
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.reactor_cell", "mechanization.has_block_hitbox", "fluid.tank", "smithed.block"], CustomName:'{"translate":"block.mechanization.reactor_cell"}', item:{id:"minecraft:poisonous_potato", components:{"minecraft:item_model":"mechanization:nuclear/block/reactor_cell"}, count: 1}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization", "mechanization.block_hitbox", "mechanization.block_hitbox.reactor_cell"]}
setblock ~ ~ ~ minecraft:barrier

# init data
scoreboard players set #fluid.io mechanization.data -1
scoreboard players set @n[type=minecraft:item_display,tag=mechanization.new,distance=..2] fluid.io.up 1
scoreboard players set @n[type=minecraft:item_display,tag=mechanization.new,distance=..2] fluid.io.down -2

scoreboard players set #fluid.in mechanization.data 1
scoreboard players set #fluid.out mechanization.data -2
scoreboard players set #fluid.max_storage.0 mechanization.data 1000
scoreboard players set #fluid.max_storage.1 mechanization.data 1000
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
function mechanization:base/utils/init_machine
