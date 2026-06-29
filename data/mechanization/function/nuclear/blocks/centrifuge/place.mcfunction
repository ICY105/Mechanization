
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.centrifuge"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:nuclear/block/centrifuge"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.centrifuge", "mechanization.redstone_control", "energy.receive", "fluid.tank", "mechanization.observable", "smithed.block"]}

setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{"translate": "text.mechanization.barrel_gui", "font": "mechanization:gui", "with":[{"text": "\uee14", "color": "white"}, {"translate": "block.mechanization.centrifuge"}]}}

# init data
scoreboard players set #fluid.io mechanization.data 0
scoreboard players set #fluid.in mechanization.data 1
scoreboard players set #fluid.out mechanization.data -6
scoreboard players set #fluid.max_storage.0 mechanization.data 4000
scoreboard players set #fluid.max_storage.1 mechanization.data 4000
scoreboard players set #fluid.max_storage.2 mechanization.data 4000
scoreboard players set #fluid.max_storage.3 mechanization.data 0
scoreboard players set @e[type=minecraft:item_display,tag=mechanization.new,distance=..2,sort=nearest,limit=1] fluid.io.north -2
scoreboard players set @e[type=minecraft:item_display,tag=mechanization.new,distance=..2,sort=nearest,limit=1] fluid.io.south -2
scoreboard players set @e[type=minecraft:item_display,tag=mechanization.new,distance=..2,sort=nearest,limit=1] fluid.io.east -4
scoreboard players set @e[type=minecraft:item_display,tag=mechanization.new,distance=..2,sort=nearest,limit=1] fluid.io.west -4
function mechanization:base/utils/init_machine
