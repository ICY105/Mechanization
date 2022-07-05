
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization.new", "mechanization.electric_lamp", "mechanization.redstone_control", "energy.receive", "smithed.block"], CustomName:'{"translate":"mech.block.electric_lamp"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422032}, Count:1b}, ItemRotation:0, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:barrier
    