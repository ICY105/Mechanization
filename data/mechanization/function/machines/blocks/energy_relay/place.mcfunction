
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.energy_relay", "mechanization.has_block_hitbox", "energy.receive", "smithed.block"], CustomName:'{"translate":"block.mechanization.energy_relay"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:machines/block/energy_relay"}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier_2","mechanization.block_hitbox.energy_relay"]}
setblock ~ ~ ~ minecraft:barrier replace

execute as @e[tag=mechanization.new,sort=nearest,limit=1] run scoreboard players set @s mechanization.data 0
function mechanization:base/utils/init_machine
