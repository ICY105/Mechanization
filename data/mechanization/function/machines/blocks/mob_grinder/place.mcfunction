
# Summon Entity & Init
execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.mob_grinder", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.has_block_hitbox", "mechanization.rotatable", "fluid.tank", "energy.receive", "smithed.block"], Rotation:[180.0f,0.0f], CustomName:'{"translate":"block.mechanization.mob_grinder"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6422012}, Count:1b}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.mob_grinder", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.has_block_hitbox", "mechanization.rotatable", "fluid.tank", "energy.receive", "smithed.block"], Rotation:[270.0f,0.0f], CustomName:'{"translate":"block.mechanization.mob_grinder"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6422012}, Count:1b}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=south] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.mob_grinder", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.has_block_hitbox", "mechanization.rotatable", "fluid.tank", "energy.receive", "smithed.block"], Rotation:[0.0f,0.0f], CustomName:'{"translate":"block.mechanization.mob_grinder"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6422012}, Count:1b}}
execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] run summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.mob_grinder", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.has_block_hitbox", "mechanization.rotatable", "fluid.tank", "energy.receive", "smithed.block"], Rotation:[90.0f,0.0f], CustomName:'{"translate":"block.mechanization.mob_grinder"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6422012}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier_2","mechanization.block_hitbox.mob_grinder"]}
setblock ~ ~ ~ minecraft:barrier

# init data
scoreboard players set #fluid.io mechanization.data -1
scoreboard players set #fluid.in mechanization.data 0
scoreboard players set #fluid.out mechanization.data -1
scoreboard players set #fluid.max_storage.0 mechanization.data 4000
scoreboard players set #fluid.max_storage.1 mechanization.data 0
scoreboard players set #fluid.max_storage.2 mechanization.data 0
scoreboard players set #fluid.max_storage.3 mechanization.data 0
scoreboard players set @e[type=minecraft:item_display,tag=mechanization.new,distance=..2,sort=nearest,limit=1] fluid.io.down -1
function mechanization:base/utils/init_machine
