
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization.new", "mechanization.battery", "mechanization.battery.t3", "mechanization.upgradable", "mechanization.mufflable", "energy.send", "energy.receive", "smithed.block"], CustomName:'{"translate":"mech.block.battery.tier_3"}', Item:{id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:6421918}, Count:1b}, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}
function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:barrier replace
