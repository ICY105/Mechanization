
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.quarry", "mechanization.redstone_control", "mechanization.upgradable", "energy.receive", "smithed.block"], CustomName:'{"translate":"block.mechanization.quarry"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6422013}, Count:1b}}
setblock ~ ~ ~ minecraft:barrel{CustomName:'[{"translate":"block.mechanization.quarry"}]'}

function mechanization:base/utils/init_machine
