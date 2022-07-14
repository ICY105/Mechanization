
# Summon Entity & Init
summon minecraft:glow_item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.quarry", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "energy.receive", "smithed.block"], CustomName:'{"translate":"mech.block.quarry"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422013}, Count:1b}, ItemRotation:4, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:barrel{CustomName:'[{"translate":"mech.block.quarry","color":"dark_red","italic":false}]'}
