
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization.new", "mechanization.auto_farm", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "energy.receive", "smithed.block"], CustomName:'{"translate":"mech.block.auto_farm"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422005}, Count:1b}, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:barrier
