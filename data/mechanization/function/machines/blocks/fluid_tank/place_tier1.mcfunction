
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.tier1_fluid_tank"}, item:{id:"minecraft:leather_boots", components:{"minecraft:item_model":"mechanization:machines/block/tier1_fluid_tank"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.fluid_tank", "mechanization.fluid_tank.t1", "fluid.tank", "mechanization.observable", "smithed.block"]}

setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{"translate": "text.mechanization.barrel_gui", "font": "mechanization:gui", "with":[{"text": "\uee0b", "color": "white"}, {"translate": "block.mechanization.tier1_fluid_tank"}]}}

# init data
scoreboard players set #fluid.io mechanization.data 1
scoreboard players set #fluid.in mechanization.data 1
scoreboard players set #fluid.out mechanization.data -1
scoreboard players operation #fluid.max_storage.0 mechanization.data = #machines.cf.t1_tank.capacity mechanization.data
scoreboard players set #fluid.max_storage.1 mechanization.data 0
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
function mechanization:base/utils/init_machine
