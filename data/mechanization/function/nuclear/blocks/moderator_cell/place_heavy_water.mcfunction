
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.moderator_cell", "mechanization.moderator_cell.heavy_water", "mechanization.has_block_hitbox", "smithed.block"], CustomName:'{"translate":"block.mechanization.moderator_cell"}', item:{id:"minecraft:leather_boots", tag:{CustomModelData:6423007, display:{color: 1450390}}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization", "mechanization.block_hitbox", "mechanization.block_hitbox.moderator_cell"]}
setblock ~ ~ ~ minecraft:barrier
