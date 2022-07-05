
# Summon Entity & Init
summon minecraft:glow_item_frame ~ ~ ~ {Tags:["mechanization.new", "mechanization.bio_generator", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "energy.receive", "smithed.block"], CustomName:'{"translate":"mech.block.bio_generator"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422007}, Count:1b}, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'[{"translate":"mech.block.bio_generator","color":"dark_red","italic":false}]'}
