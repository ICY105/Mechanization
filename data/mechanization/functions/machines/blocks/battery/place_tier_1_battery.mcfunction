
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.battery", "mechanization.battery.t1", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "mechanization.has_block_hitbox", "energy.send", "energy.receive", "smithed.block"], CustomName:'{"translate":"block.mechanization.battery.tier_1"}', item:{id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:6421900}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier_1","mechanization.block_hitbox.tier_1_battery"]}
setblock ~ ~ ~ minecraft:barrier replace

function mechanization:base/utils/init_machine
scoreboard players operation @e[tag=mechanization.battery.t1,sort=nearest,limit=1] energy.transfer_rate = #machines.cf.copper_cable.transfer_rate mechanization.data

