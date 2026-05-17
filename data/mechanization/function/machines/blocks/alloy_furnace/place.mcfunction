
# summon entity
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.alloy_furnace"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:machines/block/alloy_furnace"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.alloy_furnace", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.observable", "mechanization.mufflable", "mechanization.rotatable", "fluid.tank", "energy.receive", "smithed.block"]}

execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~90 ~
execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~180 ~
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~270 ~

setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{"translate": "text.mechanization.barrel_gui", "font": "mechanization:gui", "with":[{"text": "\uee0a", "color": "white"}, {"translate": "block.mechanization.alloy_furnace"}]}}

# init data
scoreboard players set #fluid.io mechanization.data 1
scoreboard players set #fluid.in mechanization.data 3
scoreboard players set #fluid.out mechanization.data -4
scoreboard players set #fluid.max_storage.0 mechanization.data 4000
scoreboard players set #fluid.max_storage.1 mechanization.data 4000
scoreboard players set #fluid.max_storage.2 mechanization.data 4000
scoreboard players set #fluid.max_storage.3 mechanization.data 0
function mechanization:base/utils/init_machine
