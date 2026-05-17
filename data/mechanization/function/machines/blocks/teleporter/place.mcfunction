
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.teleporter"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:machines/block/teleporter"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.teleporter", "mechanization.has_block_hitbox", "mechanization.observable", "energy.receive", "smithed.block"]}

summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier3","mechanization.block_hitbox.teleporter"]}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:barrier replace
