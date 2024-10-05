
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.fluid_accumulator", "mechanization.redstone_control", "mechanization.mufflable", "fluid.tank", "smithed.block"], CustomName:'{"translate":"block.mechanization.fluid_accumulator"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6422029}, Count:1b}}

setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uee0b","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-171","font":"space:default","with":[{"translate":"block.mechanization.fluid_accumulator","color":"dark_aqua","italic":false,"font":"minecraft:default"}]}]'}

# init data
scoreboard players set #fluid.io mechanization.data 2
scoreboard players set #fluid.in mechanization.data 0
scoreboard players set #fluid.out mechanization.data -1
scoreboard players set #fluid.max_storage.0 mechanization.data 4000
scoreboard players set #fluid.max_storage.1 mechanization.data 0
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
function mechanization:base/utils/init_machine
