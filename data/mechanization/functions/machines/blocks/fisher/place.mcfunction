
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.auto_fisher", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.rotatable", "mechanization.mufflable", "energy.receive", "smithed.block"], CustomName:'{"translate":"mech.block.auto_fisher"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422006}, Count:1b}, ItemRotation:0, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:barrier
