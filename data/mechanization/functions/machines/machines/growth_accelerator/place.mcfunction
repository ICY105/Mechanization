
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.growth_accelerator", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "energy.receive", "smithed.block"], CustomName:'{"translate":"mech.block.growth_accelerator"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422004}, Count:1b}, ItemRotation:0, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:barrier
