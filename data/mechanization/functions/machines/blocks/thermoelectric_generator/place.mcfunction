
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.thermoelectric_generator", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "fluid.tank", "energy.send", "smithed.block"], CustomName:'{"translate":"block.mechanization.alloy_furnace"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422030}, Count:1b}}
setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uee0e","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-160","font":"space:default","with":[{"translate":"block.mechanization.thermoelectric_generator","color":"dark_aqua","italic":false,"font":"minecraft:default"}]}]'}

# init data
scoreboard players set #fluid.io mechanization.data 0
scoreboard players set #fluid.in mechanization.data 3
scoreboard players set #fluid.out mechanization.data 0
scoreboard players set #fluid.max_storage.0 mechanization.data 4000
scoreboard players set #fluid.max_storage.1 mechanization.data 4000
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
function mechanization:base/utils/init_machine
