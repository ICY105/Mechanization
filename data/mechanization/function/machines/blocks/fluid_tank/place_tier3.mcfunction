
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.tier3_fluid_tank"}, item:{id:"minecraft:leather_boots", components:{"minecraft:item_model":"mechanization:machines/block/tier3_fluid_tank"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.fluid_tank", "mechanization.fluid_tank.t3", "fluid.tank", "mechanization.observable", "smithed.block"]}

setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{"translate": "text.mechanization.barrel_gui", "font": "mechanization:gui", "with":[{"text": "\uee16", "color": "white"}, {"translate": "block.mechanization.tier3_fluid_tank"}]}}

# init data
scoreboard players set #fluid.io mechanization.data 0
scoreboard players set #fluid.in mechanization.data 3
scoreboard players set #fluid.out mechanization.data -3
scoreboard players operation #fluid.max_storage.0 mechanization.data = #machines.cf.t3_tank.capacity mechanization.data
scoreboard players operation #fluid.max_storage.1 mechanization.data = #machines.cf.t3_tank.capacity mechanization.data
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
scoreboard players set @n[type=minecraft:item_display,tag=mechanization.new,distance=..2] fluid.io.north -1
scoreboard players set @n[type=minecraft:item_display,tag=mechanization.new,distance=..2] fluid.io.south -1
scoreboard players set @n[type=minecraft:item_display,tag=mechanization.new,distance=..2] fluid.io.east -2
scoreboard players set @n[type=minecraft:item_display,tag=mechanization.new,distance=..2] fluid.io.west -2
function mechanization:base/utils/init_machine
