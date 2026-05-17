
# summon entity
summon minecraft:item_display ~ ~ ~ {CustomName:{"translate":"block.mechanization.charging_station"}, item:{id:"minecraft:blast_furnace", components:{"minecraft:item_model":"mechanization:gadgets/block/charging_station"}, count: 1}, \
    Tags:["mechanization", "mechanization.new", "mechanization.charging_station", "mechanization.redstone_control", "mechanization.mufflable", "mechanization.has_block_hitbox", "energy.receive", "smithed.block"]}
    
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier2","mechanization.block_hitbox.charging_station"]}
setblock ~ ~ ~ minecraft:barrier

function mechanization:base/utils/init_machine
