
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.fluid_accumulator"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:machines/block/fluid_accumulator"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.fluid_accumulator", "mechanization.redstone_control", "mechanization.observable", "mechanization.mufflable", "fluid.tank", "smithed.block"]}

setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{"translate": "text.mechanization.barrel_gui", "font": "mechanization:gui", "with":[{"text": "\uee0b", "color": "white"}, {"translate": "block.mechanization.fluid_accumulator"}]}}

# init data
scoreboard players set #fluid.io mechanization.data 2
scoreboard players set #fluid.in mechanization.data 0
scoreboard players set #fluid.out mechanization.data -1
scoreboard players set #fluid.max_storage.0 mechanization.data 4000
scoreboard players set #fluid.max_storage.1 mechanization.data 0
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
function mechanization:base/utils/init_machine
