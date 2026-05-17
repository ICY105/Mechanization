
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.bio_generator"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:machines/block/bio_generator"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.bio_generator", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.observable", "mechanization.mufflable", "energy.send", "smithed.block"]}

setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:{"translate":"block.mechanization.bio_generator"}}

function mechanization:base/utils/init_machine
