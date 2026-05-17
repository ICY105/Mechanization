
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.heat_exchanger"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:nuclear/block/heat_exchanger"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.heat_exchanger", "fluid.tank", "smithed.block"]}

setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{"translate": "text.mechanization.barrel_gui", "font": "mechanization:gui", "with":[{"text": "\uee12", "color": "white"}, {"translate": "block.mechanization.heat_exchanger"}]}}

# init data
scoreboard players set #fluid.io mechanization.data 0
scoreboard players set #fluid.in mechanization.data 3
scoreboard players set #fluid.out mechanization.data -12
scoreboard players set #fluid.max_storage.0 mechanization.data 1000
scoreboard players set #fluid.max_storage.1 mechanization.data 1000
scoreboard players set #fluid.max_storage.2 mechanization.data 1000
scoreboard players set #fluid.max_storage.3 mechanization.data 1000
scoreboard players set @e[type=minecraft:item_display,tag=mechanization.new,distance=..2,sort=nearest,limit=1] fluid.io.north -4
scoreboard players set @e[type=minecraft:item_display,tag=mechanization.new,distance=..2,sort=nearest,limit=1] fluid.io.south -4
scoreboard players set @e[type=minecraft:item_display,tag=mechanization.new,distance=..2,sort=nearest,limit=1] fluid.io.east -8
scoreboard players set @e[type=minecraft:item_display,tag=mechanization.new,distance=..2,sort=nearest,limit=1] fluid.io.west -8
function mechanization:base/utils/init_machine
