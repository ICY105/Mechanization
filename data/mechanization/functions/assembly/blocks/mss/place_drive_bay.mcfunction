
# Summon Entity & Init
execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.drive_bay", "mechanization.rotatable", "smithed.block"], Rotation:[180.0f, 0.0f], CustomName:'{"translate":"block.mechanization.mss_drive_bay"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6425011}, Count:1b}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.drive_bay", "mechanization.rotatable", "smithed.block"], Rotation:[270.0f, 0.0f], CustomName:'{"translate":"block.mechanization.mss_drive_bay"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6425011}, Count:1b}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=south] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.drive_bay", "mechanization.rotatable", "smithed.block"], Rotation:[0.0f, 0.0f], CustomName:'{"translate":"block.mechanization.mss_drive_bay"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6425011}, Count:1b}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.drive_bay", "mechanization.rotatable", "smithed.block"], Rotation:[90.0f, 0.0f], CustomName:'{"translate":"block.mechanization.mss_drive_bay"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6425011}, Count:1b}}
setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:'{"translate":"block.mechanization.mss_drive_bay","color":"dark_red","italic":false}'}

function mechanization:base/utils/init_machine
