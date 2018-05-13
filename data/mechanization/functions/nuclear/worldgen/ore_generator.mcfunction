setblock ~ 1 ~ minecraft:structure_block{mode:"LOAD",posY:4,integrity:0.0003f,name:"mechanization:uranium_ore"} replace
setblock ~ 2 ~ minecraft:redstone_block

setblock ~ 1 ~ bedrock
setblock ~ 2 ~ bedrock

execute positioned ~ 32 ~ run kill @e[type=item,distance=..48,nbt={Item:{id:"minecraft:skull"}}]
