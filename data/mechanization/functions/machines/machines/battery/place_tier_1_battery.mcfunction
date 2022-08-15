
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.battery", "mechanization.battery.t1", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "energy.send", "energy.receive", "smithed.block"], CustomName:'{"translate":"mech.block.battery.tier_1"}', Item:{id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:6421900}, Count:1b}, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}
function mechanization:base/utils/init_machine
scoreboard players operation @e[tag=mechanization.battery.t1,sort=nearest,limit=1] energy.transfer_rate = #machines.cf.copper_cable.transfer_rate mechanization.data
setblock ~ ~ ~ minecraft:barrier replace
