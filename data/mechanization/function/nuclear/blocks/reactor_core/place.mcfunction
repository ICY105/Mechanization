
# summon entity
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.reactor_core", "mechanization.has_block_hitbox", "smithed.block"], CustomName:{"translate":"block.mechanization.reactor_core"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:nuclear/block/reactor_core"}, count: 1}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier2","mechanization.block_hitbox.reactor_core"]}
setblock ~ ~ ~ minecraft:barrier

tag @e[tag=mechanization.new] remove mechanization.new
