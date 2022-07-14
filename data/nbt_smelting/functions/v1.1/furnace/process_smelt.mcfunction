
# Add cooking time
scoreboard players add @s nbt_smelting.data 1
execute store result block ~ ~ ~ CookTime short 1 run scoreboard players get @s nbt_smelting.data

# Add fuel if needed
execute if block ~ ~ ~ #nbt_smelting:furnaces{BurnTime:0s,Items:[{Slot:1b}]} run function nbt_smelting:v1.1/furnace/fuel
execute if block ~ ~ ~ #nbt_smelting:furnaces{BurnTime:0s} run tag @s remove nbt_smelting.furnace.active

# Disable smelting if not input item
execute unless data block ~ ~ ~ Items[{Slot:0b}].tag.nbt_smelting run tag @s remove nbt_smelting.furnace.active

# Process result
execute store result score #total_cook_time nbt_smelting.data run data get block ~ ~ ~ CookTimeTotal
scoreboard players remove #total_cook_time nbt_smelting.data 4
execute if score @s nbt_smelting.data >= #total_cook_time nbt_smelting.data run function nbt_smelting:v1.1/furnace/end
