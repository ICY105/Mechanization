
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.teleporter", "energy.receive", "smithed.block"], CustomName:'{"translate":"mech.block.teleporter"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422017}, Count:1b}, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:barrier replace