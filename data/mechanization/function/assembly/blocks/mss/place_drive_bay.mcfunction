
# Summon Entity & Init
execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.drive_bay", "mechanization.rotatable", "smithed.block"], Rotation:[180.0f, 0.0f], CustomName:'{"translate":"block.mechanization.mss_drive_bay"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:assembly/block/mss_drive_bay"}, count: 1}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.drive_bay", "mechanization.rotatable", "smithed.block"], Rotation:[270.0f, 0.0f], CustomName:'{"translate":"block.mechanization.mss_drive_bay"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:assembly/block/mss_drive_bay"}, count: 1}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=south] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.drive_bay", "mechanization.rotatable", "smithed.block"], Rotation:[0.0f, 0.0f], CustomName:'{"translate":"block.mechanization.mss_drive_bay"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:assembly/block/mss_drive_bay"}, count: 1}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.drive_bay", "mechanization.rotatable", "smithed.block"], Rotation:[90.0f, 0.0f], CustomName:'{"translate":"block.mechanization.mss_drive_bay"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:assembly/block/mss_drive_bay"}, count: 1}}

setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"translate":"block.mechanization.mss_drive_bay","italic":false}'}

scoreboard players add #mss.drive_bay.id mechanization.data 1
scoreboard players operation @n[type=minecraft:item_display,tag=mechanization.new,distance=..2] mechanization.data = #mss.drive_bay.id mechanization.data
function mechanization:base/utils/init_machine
