
execute if block ~ ~ ~ #nbt_smelting:furnaces align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=nbt_smelting.furnace,distance=..0.25] run summon minecraft:marker ~ ~ ~ {Tags:["nbt_smelting.furnace"]}
execute if block ~ ~ ~ #minecraft:campfires align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=nbt_smelting.campfire,distance=..0.25] run summon minecraft:marker ~ ~ ~ {Tags:["nbt_smelting.campfire"]}

scoreboard players remove #loop nbt_smelting.data 1
execute if score #loop nbt_smelting.data matches 1.. unless block ~ ~ ~ #nbt_smelting:smelting_blocks positioned ^ ^ ^0.01 run function nbt_smelting:v1.5/furnace/place
