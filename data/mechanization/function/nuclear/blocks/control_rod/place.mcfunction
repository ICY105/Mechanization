
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.control_rod"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:nuclear/block/control_rod"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.control_rod", "mechanization.has_block_hitbox", "mechanization.redstone_control", "smithed.block"]}

summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization", "mechanization.block_hitbox", "mechanization.block_hitbox.control_rod"]}
setblock ~ ~ ~ minecraft:barrier

scoreboard players set @e[type=minecraft:item_display,tag=mechanization.new,distance=..2,sort=nearest,limit=1] mechanization.redstone 1
tag @e[tag=mechanization.new] remove mechanization.new
