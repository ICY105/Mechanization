
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.ticking", "mechanization.tinker_table", "smithed.block"], CustomName:'{"translate":"block.mechanization.charging_station"}', item:{id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:6424001}, Count:1b}}
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"block.mechanization.tinker_table","color":"dark_red","italic":false}'}

function mechanization:base/utils/init_machine
