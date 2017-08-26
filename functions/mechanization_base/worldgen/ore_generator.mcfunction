#spread
execute @s ~ ~ ~ detect ~ 0.5 ~15 minecraft:bedrock 0 summon area_effect_cloud ~ 0.5 ~15 {Tags:["mechanization_gen"],Duration:2000000000}
execute @s ~ ~ ~ detect ~ 0.5 ~-15 minecraft:bedrock 0 summon area_effect_cloud ~ 0.5 ~-15 {Tags:["mechanization_gen"],Duration:2000000000}
execute @s ~ ~ ~ detect ~15 0.5 ~ minecraft:bedrock 0 summon area_effect_cloud ~15 0.5 ~ {Tags:["mechanization_gen"],Duration:2000000000}
execute @s ~ ~ ~ detect ~-15 0.5 ~ minecraft:bedrock 0 summon area_effect_cloud ~-15 0.5 ~ {Tags:["mechanization_gen"],Duration:2000000000}

setblock ~ ~ ~ minecraft:structure_block 0 replace {posX:0,mode:"LOAD",posY:32,sizeX:16,posZ:0,integrity:0.0007f,name:"mechanization/copper_ore",sizeY:32,sizeZ:16,showboundingbox:0b}
setblock ~ ~1 ~ minecraft:redstone_block

setblock ~ ~1 ~ minecraft:structure_block 0 replace {mode:"LOAD",posX:0,posY:16,sizeX:16,posZ:0,integrity:0.00055f,name:"mechanization/tin_ore",sizeY:32,sizeZ:16,showboundingbox:0b}
setblock ~ ~ ~ minecraft:redstone_block

setblock ~ ~ ~ minecraft:structure_block 0 replace {mode:"LOAD",posX:0,posY:8,sizeX:16,posZ:0,integrity:0.0002f,name:"mechanization/uranium_ore",sizeY:24,sizeZ:16,showboundingbox:0b}
setblock ~ ~1 ~ minecraft:redstone_block

setblock ~ ~1 ~ minecraft:structure_block 0 replace {posX:0,mode:"LOAD",posY:1,sizeX:16,posZ:0,integrity:0.0002f,name:"mechanization/titanium_ore",sizeY:16,sizeZ:16,showboundingbox:0b}
setblock ~ ~ ~ minecraft:redstone_block

execute @s ~ 32 ~ scoreboard players tag @e[type=item,r=48] add atSkull {Item:{id:"minecraft:skull"}}

execute @s ~ ~ ~ setblock ~ ~ ~ minecraft:barrier
execute @s ~ ~ ~ setblock ~ ~1 ~ minecraft:bedrock