
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.quarry", "mechanization.redstone_control", "mechanization.upgradable", "energy.receive", "smithed.block"], CustomName:'{"translate":"block.mechanization.quarry"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:machines/block/quarry"}, Count:1b}}
setblock ~ ~ ~ minecraft:barrel{CustomName:'[{"translate":"block.mechanization.quarry"}]'}

function mechanization:base/utils/init_machine
