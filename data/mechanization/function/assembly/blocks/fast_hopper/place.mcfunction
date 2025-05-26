
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.ticking", "mechanization.fast_hopper", "smithed.block"], CustomName:'{"translate":"block.mechanization.fast_hopper"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:assembly/block/fast_hopper", "minecraft:custom_model_data":{floats:[1]}}, Count:1b}}
data merge block ~ ~ ~ {CustomName:'{"translate":"block.mechanization.fast_hopper","italic":false}', Items:[]}

function mechanization:base/utils/init_machine
