
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.lightning_generator", "mechanization.upgradable", "energy.send", "smithed.block"], CustomName:'{"translate":"mech.block.lightning_generator"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422031}, Count:1b}, ItemRotation:0, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:barrier
