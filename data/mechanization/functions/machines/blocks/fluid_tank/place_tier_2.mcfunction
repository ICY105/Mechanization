
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.liquid_tank", "mechanization.fluid_tank.t2", "fluid.tank", "smithed.block"], CustomName:'{"translate":"block.mechanization.tier_2_fluid_tank"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422024}, Count:1b}}
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'[{"translate":"offset.23","font":"space:default","with":[{"text":"\\uee0b","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-60","font":"space:default","with":[{"translate":"block.mechanization.tier_2_fluid_tank","color":"dark_red","italic":false,"font":"minecraft:default"}]}]'}

# init data
scoreboard players set #fluid.io mechanization.data 1
scoreboard players set #fluid.in mechanization.data 1
scoreboard players set #fluid.out mechanization.data -1
scoreboard players operation #fluid.max_storage.0 mechanization.data = #machines.cf.t2_tank.capacity mechanization.data
scoreboard players set #fluid.max_storage.1 mechanization.data 0
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
function mechanization:base/utils/init_machine
