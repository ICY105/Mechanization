
data modify storage nbt_smelting:io item set from block ~ ~ ~ Items[{Slot:1b}]

execute if data storage nbt_smelting:io item{id:"minecraft:lava_bucket"} run data merge block ~ ~ ~ {BurnTime:20000s}
execute if data storage nbt_smelting:io item{id:"minecraft:lava_bucket"} run item replace block ~ ~ ~ container.1 with bucket

execute if data storage nbt_smelting:io item{id:"minecraft:coal_block"} run data merge block ~ ~ ~ {BurnTime:16000s}
execute if data storage nbt_smelting:io item{id:"minecraft:dried_kelp_block"} run data merge block ~ ~ ~ {BurnTime:4000s}
execute if data storage nbt_smelting:io item{id:"minecraft:blaze_rod"} run data merge block ~ ~ ~ {BurnTime:2400s}
execute if data storage nbt_smelting:io item{id:"minecraft:coal"} run data merge block ~ ~ ~ {BurnTime:1600s}
execute if data storage nbt_smelting:io item{id:"minecraft:charcoal"} run data merge block ~ ~ ~ {BurnTime:1600s}
execute if data storage nbt_smelting:io item{id:"minecraft:stick"} run data merge block ~ ~ ~ {BurnTime:100s}
execute if data storage nbt_smelting:io item{id:"minecraft:bamboo"} run data merge block ~ ~ ~ {BurnTime:50s}

execute if data storage nbt_smelting:io item{id:"minecraft:oak_log"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage nbt_smelting:io item{id:"minecraft:birch_log"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage nbt_smelting:io item{id:"minecraft:spruce_log"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage nbt_smelting:io item{id:"minecraft:jungle_log"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage nbt_smelting:io item{id:"minecraft:acacia_log"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage nbt_smelting:io item{id:"minecraft:dark_oak_log"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage nbt_smelting:io item{id:"minecraft:crimson_stem"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage nbt_smelting:io item{id:"minecraft:warped_stem"} run data merge block ~ ~ ~ {BurnTime:300s}

execute if data storage nbt_smelting:io item{id:"minecraft:oak_planks"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage nbt_smelting:io item{id:"minecraft:birch_planks"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage nbt_smelting:io item{id:"minecraft:spruce_planks"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage nbt_smelting:io item{id:"minecraft:jungle_planks"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage nbt_smelting:io item{id:"minecraft:acacia_planks"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage nbt_smelting:io item{id:"minecraft:dark_oak_planks"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage nbt_smelting:io item{id:"minecraft:crimson_planks"} run data merge block ~ ~ ~ {BurnTime:300s}
execute if data storage nbt_smelting:io item{id:"minecraft:warped_planks"} run data merge block ~ ~ ~ {BurnTime:300s}

execute if block ~ ~ ~ #nbt_smelting:furnaces{BurnTime:0s} run function nbt_smelting:v1.4/furnace/fuel_2

execute unless block ~ ~ ~ #nbt_smelting:furnaces{BurnTime:0s} store result score #fuel_count nbt_smelting.data run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute unless block ~ ~ ~ #nbt_smelting:furnaces{BurnTime:0s} run scoreboard players remove #fuel_count nbt_smelting.data 1
execute unless block ~ ~ ~ #nbt_smelting:furnaces{BurnTime:0s} store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get #fuel_count nbt_smelting.data
execute unless block ~ ~ ~ #nbt_smelting:furnaces{BurnTime:0s} if block ~ ~ ~ #nbt_smelting:furnaces[lit=false] run function nbt_smelting:v1.4/furnace/make_lit
