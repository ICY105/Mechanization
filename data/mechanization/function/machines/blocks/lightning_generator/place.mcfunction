
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.ticking", "mechanization.lightning_generator", "mechanization.upgradable", "mechanization.has_block_hitbox", "energy.send", "smithed.block"], CustomName:'{"translate":"block.mechanization.lightning_generator"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422031}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier_3","mechanization.block_hitbox.lightning_generator"]}
setblock ~ ~ ~ minecraft:barrier

function mechanization:base/utils/init_machine
