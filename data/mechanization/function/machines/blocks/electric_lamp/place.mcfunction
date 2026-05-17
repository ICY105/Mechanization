
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.electric_lamp"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:machines/block/electric_lamp"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.electric_lamp", "mechanization.redstone_control", "mechanization.observable", "mechanization.has_block_hitbox", "energy.receive", "smithed.block"]}

summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier2","mechanization.block_hitbox.electric_lamp"]}
setblock ~ ~ ~ minecraft:barrier

function mechanization:base/utils/init_machine
    