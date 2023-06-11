
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.auto_jukebox", "smithed.block"], CustomName:'{"translate":"block.mechanization.auto_jukebox"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6425006}, Count:1b}}
setblock ~ ~ ~ minecraft:barrel[facing=south]{CustomName:'{"translate":"block.mechanization.auto_jukebox","color":"dark_red","italic":false}'}

function mechanization:base/utils/init_machine
