
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.charging_station", "mechanization.redstone_control", "mechanization.mufflable", "mechanization.has_block_hitbox", "energy.receive", "smithed.block"], CustomName:'{"translate":"block.mechanization.charging_station"}'}
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.charging_station.model", "mechanization.has_block_hitbox.model", "smithed.block"], CustomName:'{"translate":"block.mechanization.charging_station"}', item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6424000}}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.tier_2","mechanization.block_hitbox.charging_station"]}
setblock ~ ~ ~ minecraft:barrier

function mechanization:base/utils/init_machine

data merge entity @e[type=minecraft:item_display,tag=mechanization.charging_station,distance=..1,sort=nearest,limit=1] {Rotation:[0.0f, 90.0f],transformation:{scale:[0.6f, 0.6f, 0.6f],translation:[0f,0f,-0.1f]}}
