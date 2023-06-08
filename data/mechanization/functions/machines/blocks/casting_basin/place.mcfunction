
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.casting_basin", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "fluid.tank", "energy.receive", "smithed.block"], CustomName:'{"translate":"block.mechanization.casting_basin"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422028}, Count:1b}}
setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uee0d","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-120","font":"space:default","with":[{"translate":"block.mechanization.casting_basin","color":"dark_aqua","italic":false,"font":"minecraft:default"}]}]'}

# init data
scoreboard players set #fluid.io mechanization.data 0
scoreboard players set #fluid.in mechanization.data 1
scoreboard players set #fluid.out mechanization.data 0
scoreboard players set #fluid.max_storage.0 mechanization.data 4000
scoreboard players set #fluid.max_storage.1 mechanization.data 0
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
function mechanization:base/utils/init_machine
