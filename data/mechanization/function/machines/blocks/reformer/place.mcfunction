
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.item_reformer"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:machines/block/item_reformer"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.reformer", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.observable", "mechanization.mufflable", "fluid.tank", "energy.receive", "smithed.block"]}

setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{"translate": "text.mechanization.barrel_gui", "font": "mechanization:gui", "with":[{"text": "\uee13", "color": "white"}, {"translate": "block.mechanization.item_reformer"}]}}

# init data
scoreboard players set #fluid.io mechanization.data 0
scoreboard players set #fluid.in mechanization.data 1
scoreboard players set #fluid.out mechanization.data 0
scoreboard players set #fluid.max_storage.0 mechanization.data 4000
scoreboard players set #fluid.max_storage.1 mechanization.data 0
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
function mechanization:base/utils/init_machine
