
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.arc_furnace"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:machines/block/arc_furnace"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.arc_furnace", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.observable", "mechanization.mufflable", "mechanization.rotatable", "fluid.tank", "energy.receive", "smithed.block"]}

execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~90 ~
execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~180 ~
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] as @n[tag=mechanization.new,distance=..1] at @s run tp @s ~ ~ ~ ~270 ~

setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{"translate": "text.mechanization.barrel_gui", "font": "mechanization:gui", "with":[{"text": "\uee0c", "color": "white"}, {"translate": "block.mechanization.arc_furnace"}]}}

# init data
scoreboard players set #fluid.io mechanization.data 2
scoreboard players set #fluid.in mechanization.data 0
scoreboard players set #fluid.out mechanization.data -1
scoreboard players set #fluid.max_storage.0 mechanization.data 4000
scoreboard players set #fluid.max_storage.1 mechanization.data 0
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
function mechanization:base/utils/init_machine
