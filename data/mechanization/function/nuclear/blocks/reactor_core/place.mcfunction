
# summon entity
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.reactor_core", "mechanization.has_block_hitbox", "smithed.block"], CustomName:'{"translate":"block.mechanization.reactor_core"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6423002}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier_2","mechanization.block_hitbox.reactor_core"]}
setblock ~ ~ ~ minecraft:barrier

execute as @e[tag=mechanization.new,distance=..1] at @s run function mechanization:nuclear/blocks/reactor_core/update_model
execute positioned ~ ~1 ~ align xyz as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/update_model
execute positioned ~ ~-1 ~ align xyz as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/update_model

tag @e[tag=mechanization.new] remove mechanization.new
