
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.tinker_table", "smithed.block"], CustomName:'{"translate":"block.mechanization.tinker_table"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:gadgets/block/tinker_table", "minecraft:custom_model_data":{floats:[1]}}, Count:1b}, Passengers:[ \
    {id:"minecraft:item_display", Tags:["mechanization", "mechanization.tinker_table.model", "smithed.block"], CustomName:'{"translate":"block.mechanization.tinker_table"}', item:{id:"minecraft:poisonous_potato", components:{"minecraft:item_model":"mechanization:gadgets/block/tinker_table", "minecraft:custom_model_data":{floats:[2]}}, Count:1b}} \
]}
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"block.mechanization.tinker_table","italic":false}'}

execute as @n[tag=mechanization.new,distance=..0.5] on passengers run data merge entity @s {billboard:"vertical",brightness:{sky:15,block:15},transformation:{translate:[0.0,1.0,0.0]}}
function mechanization:base/utils/init_machine
