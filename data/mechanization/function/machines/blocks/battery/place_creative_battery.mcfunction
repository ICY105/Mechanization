
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.battery", "mechanization.battery.t3", "mechanization.battery.creative", "mechanization.mufflable", "mechanization.has_block_hitbox", "energy.send", "energy.receive", "smithed.block"], CustomName:'{"translate":"block.mechanization.battery.tier_3"}', item:{id:"minecraft:blast_furnace", components:{"minecraft:custom_model_data":6421940,"minecraft:enchantments": {levels: {"minecraft:infinity": 1}}}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier_3","mechanization.block_hitbox.tier_3_battery"]}

function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:barrier replace
