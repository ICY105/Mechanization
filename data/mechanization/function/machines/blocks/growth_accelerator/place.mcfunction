
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.growth_accelerator", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "mechanization.has_block_hitbox", "energy.receive", "smithed.block"], CustomName:'{"translate":"block.mechanization.growth_accelerator"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:machines/block/growth_accelerator"}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier_2","mechanization.block_hitbox.growth_accelerator"]}
setblock ~ ~ ~ minecraft:barrier

function mechanization:base/utils/init_machine
