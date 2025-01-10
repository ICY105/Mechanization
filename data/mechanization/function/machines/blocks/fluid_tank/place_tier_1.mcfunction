
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.fluid_tank", "mechanization.fluid_tank.t1", "fluid.tank", "smithed.block"], CustomName:'{"translate":"block.mechanization.tier_1_fluid_tank"}', item:{id:"minecraft:leather_boots", components:{"minecraft:item_model":"mechanization:machines/block/tier1_fluid_tank"}, Count:1b}}

setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uee0b","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-171","font":"space:default","with":[{"translate":"block.mechanization.tier_1_fluid_tank","font":"minecraft:default"}]}]'}

# init data
scoreboard players set #fluid.io mechanization.data 1
scoreboard players set #fluid.in mechanization.data 1
scoreboard players set #fluid.out mechanization.data -1
scoreboard players operation #fluid.max_storage.0 mechanization.data = #machines.cf.t1_tank.capacity mechanization.data
scoreboard players set #fluid.max_storage.1 mechanization.data 0
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
function mechanization:base/utils/init_machine
