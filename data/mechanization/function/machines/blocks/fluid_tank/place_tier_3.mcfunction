
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.fluid_tank", "mechanization.fluid_tank.t3", "fluid.tank", "smithed.block"], CustomName:'{"translate":"block.mechanization.tier_3_fluid_tank"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6422025}, Count:1b}}

setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uee16","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-171","font":"space:default","with":[{"translate":"block.mechanization.tier_3_fluid_tank","color":"dark_purple","italic":false,"font":"minecraft:default"}]}]'}

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
