
# summon entity
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.reactor_core", "mechanization.has_block_hitbox", "smithed.block"], CustomName:'{"translate":"block.mechanization.reactor_core"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6423002}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier_2","mechanization.block_hitbox.reactor_core"]}

scoreboard players add #reactor_core.id mechanization.data 1
scoreboard players operation @e[tag=mechanization.new,distance=..1,limit=1] mechanization.item_id = #reactor_core.id mechanization.data

setblock ~ ~ ~ minecraft:barrier
