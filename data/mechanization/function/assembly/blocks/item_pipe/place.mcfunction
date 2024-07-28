
setblock ~ ~ ~ minecraft:moving_piston
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.item_pipe", "smithed.block"], CustomName:'{"translate":"block.mechanization.item_pipe"}', item:{id:"minecraft:oxidized_copper", Count:1b, tag:{CustomModelData:6421000}}}
execute as @e[tag=mechanization.new,sort=nearest,limit=1] at @s run function mechanization:assembly/blocks/item_pipe/place_2
