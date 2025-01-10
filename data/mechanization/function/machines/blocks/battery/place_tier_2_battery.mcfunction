
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.battery", "mechanization.battery.t2", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "mechanization.has_block_hitbox", "energy.send", "energy.receive", "smithed.block"], CustomName:'{"translate":"block.mechanization.battery.tier_2"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:machines/block/tier2_battery"}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier_2","mechanization.block_hitbox.tier_2_battery"]}
setblock ~ ~ ~ minecraft:barrier replace

function mechanization:base/utils/init_machine
scoreboard players operation @e[tag=mechanization.battery.t2,sort=nearest,limit=1] energy.transfer_rate = #machines.cf.conductive_cable.transfer_rate mechanization.data

