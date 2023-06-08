
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.bio_generator", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "energy.send", "smithed.block"], CustomName:'{"translate":"block.mechanization.bio_generator"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422007}, Count:1b}}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'[{"translate":"block.mechanization.bio_generator","color":"dark_red","italic":false}]'}
