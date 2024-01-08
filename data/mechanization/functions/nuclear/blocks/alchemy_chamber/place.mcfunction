
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.alchemy_chamber", "mechanization.redstone_control", "mechanization.upgradable", "smithed.block"], CustomName:'{"translate":"block.mechanization.alchemy_chamber"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6423003}, Count:1b}}
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'[{"translate":"offset.35","font":"space:default","with":[{"text":"\\uee15","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-52","font":"space:default","with":[{"translate":"block.mechanization.alchemy_chamber","color":"dark_purple","italic":false,"font":"minecraft:default"}]}]'}

# init data
function mechanization:base/utils/init_machine
