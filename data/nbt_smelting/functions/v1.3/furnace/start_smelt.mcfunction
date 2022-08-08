
execute store result score #output_count nbt_smelting.data run data get block ~ ~ ~ Items[{Slot:2b}].Count

# Reset smelting score
scoreboard players set @s nbt_smelting.data 0

# Check if current input matches output
scoreboard players set #enable nbt_smelting.data 0
execute if score #output_count nbt_smelting.data matches 0 run scoreboard players set #enable nbt_smelting.data 1

execute if score #output_count nbt_smelting.data matches 1.. run data modify storage nbt_smelting:io item set from block ~ ~ ~ Items[{Slot:0b}]
execute if score #output_count nbt_smelting.data matches 1.. run data remove storage nbt_smelting:io item.Slot
execute if score #output_count nbt_smelting.data matches 1.. run data remove storage nbt_smelting:io item.Count
execute if score #output_count nbt_smelting.data matches 1.. store success score #failed nbt_smelting.data run data modify storage nbt_smelting:io item set from entity @s data.item
execute if score #output_count nbt_smelting.data matches 1.. if score #failed nbt_smelting.data matches 0 run scoreboard players set #enable nbt_smelting.data 1

# Check Stack Sizes
execute if score #enable nbt_smelting.data matches 1 if score #output_count nbt_smelting.data matches 1 run function nbt_smelting:v1.3/furnace/check_out_stackable
execute if score #enable nbt_smelting.data matches 1 if score #output_count nbt_smelting.data matches 16 run function nbt_smelting:v1.3/furnace/check_out_stackable_16
execute if score #enable nbt_smelting.data matches 1 if score #output_count nbt_smelting.data matches 64 run scoreboard players set #enable nbt_smelting.data 0

# Start Smelting
execute if score #enable nbt_smelting.data matches 1 if block ~ ~ ~ #nbt_smelting:furnaces{BurnTime:0s,Items:[{Slot:1b}]} run function nbt_smelting:v1.3/furnace/fuel
execute if score #enable nbt_smelting.data matches 1 unless block ~ ~ ~ #nbt_smelting:furnaces{BurnTime:0s} run tag @s add nbt_smelting.furnace.active
