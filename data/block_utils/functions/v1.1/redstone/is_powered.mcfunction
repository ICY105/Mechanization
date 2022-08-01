
scoreboard players set #out block_utils.data 0

#generic: static
execute if block ~ ~1 ~ #block_utils:v1.1/strong_power_top unless block ~ ~1 ~ #block_utils:v1.1/strong_power_top[power=0] unless block ~ ~1 ~ #block_utils:v1.1/strong_power_top[powered=false] run scoreboard players set #out block_utils.data 1
execute if block ~ ~-1 ~ #block_utils:v1.1/strong_power_bottom[powered=true,face=ceiling] run scoreboard players set #out block_utils.data 1
execute if block ~1 ~ ~ #block_utils:v1.1/strong_power_side[powered=true,facing=east] run scoreboard players set #out block_utils.data 1
execute if block ~-1 ~ ~ #block_utils:v1.1/strong_power_side[powered=true,facing=west] run scoreboard players set #out block_utils.data 1
execute if block ~ ~ ~1 #block_utils:v1.1/strong_power_side[powered=true,facing=south] run scoreboard players set #out block_utils.data 1
execute if block ~ ~ ~-1 #block_utils:v1.1/strong_power_side[powered=true,facing=north] run scoreboard players set #out block_utils.data 1

#redstone torch
execute if block ~ ~-1 ~ minecraft:redstone_torch[lit=true] run scoreboard players set #out block_utils.data 1

#redstone dust
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:redstone_wire unless block ~ ~ ~ minecraft:redstone_wire[power=0] run scoreboard players set #out block_utils.data 1
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:redstone_wire[west=side] unless block ~ ~ ~ minecraft:redstone_wire[power=0] run scoreboard players set #out block_utils.data 1
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:redstone_wire[east=side] unless block ~ ~ ~ minecraft:redstone_wire[power=0] run scoreboard players set #out block_utils.data 1
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:redstone_wire[north=side] unless block ~ ~ ~ minecraft:redstone_wire[power=0] run scoreboard players set #out block_utils.data 1
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:redstone_wire[south=side] unless block ~ ~ ~ minecraft:redstone_wire[power=0] run scoreboard players set #out block_utils.data 1

#check opaque
execute if block ~ ~ ~ #block_utils:v1.1/transparent run scoreboard players set #out block_utils.data 0
