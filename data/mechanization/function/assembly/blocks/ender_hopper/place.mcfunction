
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.ender_hopper", "smithed.block"], CustomName:'{"translate":"block.mechanization.ender_hopper"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:assembly/block/ender_hopper", "minecraft:custom_model_data":{floats:[1]}}, count:1b}}
data merge block ~ ~ ~ {CustomName:'{"translate":"block.mechanization.ender_hopper","italic":false}', Items:[]}

function mechanization:base/utils/init_machine
