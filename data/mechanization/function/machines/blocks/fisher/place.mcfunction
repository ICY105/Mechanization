
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.auto_fisher", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.rotatable", "mechanization.has_block_hitbox", "mechanization.mufflable", "energy.receive", "smithed.block"], CustomName:'{"translate":"block.mechanization.auto_fisher"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6422006}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier_2","mechanization.block_hitbox.auto_fisher"]}
setblock ~ ~ ~ minecraft:barrier

function mechanization:base/utils/init_machine
