
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.heat_exchanger", "fluid.tank", "smithed.block"], CustomName:'{"translate":"block.mechanization.heat_exchanger"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6423011}, Count:1b}}
setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uee12","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-171","font":"space:default","with":[{"translate":"block.mechanization.heat_exchanger","color":"dark_aqua","italic":false,"font":"minecraft:default"}]}]'}

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
