
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.battery", "mechanization.battery.t3", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "energy.send", "energy.receive", "smithed.block"], CustomName:'{"translate":"mech.block.battery.tier_3"}', Item:{id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:6421918}, Count:1b}, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}
function mechanization:base/utils/init_machine
scoreboard players operation #rate mechanization.data = #machines.cf.conductive_cable.transfer_rate mechanization.data
scoreboard players operation #rate mechanization.data *= #cons.16 mechanization.data
scoreboard players operation @e[tag=mechanization.battery.t3,sort=nearest,limit=1] energy.transfer_rate = #rate mechanization.data
setblock ~ ~ ~ minecraft:barrier replace
