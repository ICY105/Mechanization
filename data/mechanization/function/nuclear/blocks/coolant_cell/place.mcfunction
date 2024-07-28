
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.coolant_cell", "mechanization.has_block_hitbox", "fluid.tank", "smithed.block"], CustomName:'{"translate":"block.mechanization.coolant_cell"}', item:{id:"minecraft:leather_boots", tag:{CustomModelData:6423008, display:{color:0}}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization", "mechanization.block_hitbox", "mechanization.block_hitbox.coolant_cell"]}
setblock ~ ~ ~ minecraft:barrier

# init data
scoreboard players set #fluid.io mechanization.data -1
scoreboard players set @e[type=minecraft:item_display,tag=mechanization.new,distance=..2,sort=nearest,limit=1] fluid.io.up 1
scoreboard players set @e[type=minecraft:item_display,tag=mechanization.new,distance=..2,sort=nearest,limit=1] fluid.io.down -2

scoreboard players set #fluid.in mechanization.data 1
scoreboard players set #fluid.out mechanization.data -2
scoreboard players set #fluid.max_storage.0 mechanization.data 1000
scoreboard players set #fluid.max_storage.1 mechanization.data 1000
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
function mechanization:base/utils/init_machine
