
# Summon Entity & Init
execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.terminal", "mechanization.rotatable", "energy.receive", "smithed.block"], Rotation:[180.0f, 0.0f], CustomName:'{"translate":"block.mechanization.mss_terminal"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:assembly/block/mss_terminal"}, count: 1}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.terminal", "mechanization.rotatable", "energy.receive", "smithed.block"], Rotation:[270.0f, 0.0f], CustomName:'{"translate":"block.mechanization.mss_terminal"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:assembly/block/mss_terminal"}, count: 1}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=south] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.terminal", "mechanization.rotatable", "energy.receive", "smithed.block"], Rotation:[0.0f, 0.0f], CustomName:'{"translate":"block.mechanization.mss_terminal"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:assembly/block/mss_terminal"}, count: 1}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.terminal", "mechanization.rotatable", "energy.receive", "smithed.block"], Rotation:[90.0f, 0.0f], CustomName:'{"translate":"block.mechanization.mss_terminal"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:assembly/block/mss_terminal"}, count: 1}}

setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:'{"translate":"block.mechanization.mss_terminal","italic":false}'}

function mechanization:base/utils/init_machine
 