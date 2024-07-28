
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.steam_condenser", "mechanization.has_block_hitbox", "fluid.tank", "smithed.block"], CustomName:'{"translate":"block.mechanization.steam_condenser"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6423010}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization", "mechanization.block_hitbox", "mechanization.block_hitbox.steam_condenser"]}
setblock ~ ~ ~ minecraft:barrier

# init data
scoreboard players set #fluid.io mechanization.data 2
scoreboard players set #fluid.in mechanization.data 0
scoreboard players set #fluid.out mechanization.data -1
scoreboard players set #fluid.max_storage.0 mechanization.data 1000
scoreboard players set #fluid.max_storage.1 mechanization.data 0
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
function mechanization:base/utils/init_machine
