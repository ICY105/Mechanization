

# Check if current input matches output
scoreboard players set #success nbt_smelting.data 1
execute store result score #output_count nbt_smelting.data run data get block ~ ~ ~ Items[{Slot:2b}].Count

execute if score #output_count nbt_smelting.data matches 1.. run data modify storage nbt_smelting:io item set from block ~ ~ ~ Items[{Slot:0b}]
execute if score #output_count nbt_smelting.data matches 1.. run data remove storage nbt_smelting:io item.Slot
execute if score #output_count nbt_smelting.data matches 1.. run data remove storage nbt_smelting:io item.Count
execute if score #output_count nbt_smelting.data matches 1.. store success score #failed nbt_smelting.data run data modify storage nbt_smelting:io item set from entity @s data.item
execute if score #output_count nbt_smelting.data matches 1.. if score #failed nbt_smelting.data matches 1 run scoreboard players set #success nbt_smelting.data 0

# Copy data
execute if score #success nbt_smelting.data matches 1 run data modify entity @s data.item set from block ~ ~ ~ Items[{Slot:0b}]
execute if score #success nbt_smelting.data matches 1 run data remove entity @s data.item.Slot
execute if score #success nbt_smelting.data matches 1 run data remove entity @s data.item.Count
execute if score #success nbt_smelting.data matches 1 run data modify storage nbt_smelting:io item set from block ~ ~ ~ Items[{Slot:0b}]

# Get Output
execute if score #success nbt_smelting.data matches 1 if block ~ ~ ~ minecraft:blast_furnace run function #nbt_smelting:v1/blast_furnace
execute if score #success nbt_smelting.data matches 1 if block ~ ~ ~ minecraft:furnace run function #nbt_smelting:v1/furnace
execute if score #success nbt_smelting.data matches 1 if block ~ ~ ~ minecraft:smoker run function #nbt_smelting:v1/smoker

# Set Counts
execute if score #success nbt_smelting.data matches 1 store result score #recipe_count nbt_smelting.data run data get block ~ ~ ~ Items[{Slot:2b}].Count

execute if score #success nbt_smelting.data matches 1 run scoreboard players operation #output_count nbt_smelting.data += #recipe_count nbt_smelting.data
execute if score #success nbt_smelting.data matches 1 store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get #output_count nbt_smelting.data

execute if score #success nbt_smelting.data matches 1 store result score #output_count nbt_smelting.data run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute if score #success nbt_smelting.data matches 1 run scoreboard players remove #output_count nbt_smelting.data 1
execute if score #success nbt_smelting.data matches 1 store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get #output_count nbt_smelting.data

# Mark as not active, then continue if still have recipe
tag @s remove nbt_smelting.furnace.active
data merge block ~ ~ ~ {CookTime:0s}
scoreboard players set @s nbt_smelting.data 0
execute if entity @s if data block ~ ~ ~ Items[{Slot:0b}].tag.nbt_smelting run function nbt_smelting:v1.4/furnace/start_smelt
