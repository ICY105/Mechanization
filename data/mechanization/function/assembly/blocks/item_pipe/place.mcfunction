
setblock ~ ~ ~ minecraft:moving_piston
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.item_pipe", "smithed.block"], CustomName:'{"translate":"block.mechanization.item_pipe"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model": "mechanization:assembly/block/item_pipe", "minecraft:custom_model_data":{floats:[0]}}, count: 1}}
execute as @e[tag=mechanization.new,sort=nearest,limit=1] at @s run function mechanization:assembly/blocks/item_pipe/place_2
