execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:lava_bucket"}]} run data merge block ~ ~ ~ {BurnTime:20000s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:lava_bucket"}]} run replaceitem block ~ ~ ~ container.1 bucket 2

execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:block_of_coal"}]} run data merge block ~ ~ ~ {BurnTime:16000s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:dried_kelp_block"}]} run data merge block ~ ~ ~ {BurnTime:4000s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:blaze_rod"}]} run data merge block ~ ~ ~ {BurnTime:2400s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} run data merge block ~ ~ ~ {BurnTime:1600s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:charcoal"}]} run data merge block ~ ~ ~ {BurnTime:1600s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:red_mushroom_block"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:brown_mushroom_block"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:mushroom_stem"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:stick"}]} run data merge block ~ ~ ~ {BurnTime:100s}

execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:oak_log"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:birch_log"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:spruce_log"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:jungle_log"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:acacia_log"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:dark_oak_log"}]} run data merge block ~ ~ ~ {BurnTime:300s}

execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:oak_planks"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:birch_planks"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:spruce_planks"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:jungle_planks"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:acacia_planks"}]} run data merge block ~ ~ ~ {BurnTime:300s}
execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:dark_oak_planks"}]} run data merge block ~ ~ ~ {BurnTime:300s}

execute if block ~ ~ ~ furnace{BurnTime:0s} run function du:custom_furnace/fuel_2

execute store result score temp_1 du_data run data get block ~ ~ ~ Items[1].Count
scoreboard players remove temp_1 du_data 1
execute store result block ~ ~ ~ Items[1].Count byte 1 run scoreboard players get temp_1 du_data
