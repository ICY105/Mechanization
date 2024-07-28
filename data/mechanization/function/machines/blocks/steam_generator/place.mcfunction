
# Summon Entity & Init
execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.steam_generator", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "mechanization.rotatable", "fluid.tank", "energy.send", "smithed.block"], Rotation:[180.0f,0.0f], CustomName:'{"translate":"block.mechanization.steam_generator"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422001}, Count:1b}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.steam_generator", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "mechanization.rotatable", "fluid.tank", "energy.send", "smithed.block"], Rotation:[270.0f,0.0f], CustomName:'{"translate":"block.mechanization.steam_generator"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422001}, Count:1b}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=south] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.steam_generator", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "mechanization.rotatable", "fluid.tank", "energy.send", "smithed.block"], Rotation:[0.0f,0.0f], CustomName:'{"translate":"block.mechanization.steam_generator"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422001}, Count:1b}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.steam_generator", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "mechanization.rotatable", "fluid.tank", "energy.send", "smithed.block"], Rotation:[90.0f,0.0f], CustomName:'{"translate":"block.mechanization.steam_generator"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422001}, Count:1b}}
setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uee09","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-132","font":"space:default","with":[{"translate":"block.mechanization.steam_generator","color":"dark_aqua","italic":false,"font":"minecraft:default"}]}]'}

# init data
scoreboard players set #fluid.io mechanization.data 1
scoreboard players set #fluid.in mechanization.data 3
scoreboard players set #fluid.out mechanization.data -2
scoreboard players set #fluid.max_storage.0 mechanization.data 4000
scoreboard players set #fluid.max_storage.1 mechanization.data 4000
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
function mechanization:base/utils/init_machine
