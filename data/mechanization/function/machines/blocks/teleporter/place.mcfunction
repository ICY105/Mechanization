
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.teleporter", "mechanization.has_block_hitbox", "energy.receive", "smithed.block"], CustomName:'{"translate":"block.mechanization.teleporter"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:machines/block/teleporter"}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier3","mechanization.block_hitbox.teleporter"]}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:barrier replace
