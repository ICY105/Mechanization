
schedule function nbt_smelting:v1.2/tick 1t

# Timer
scoreboard players add #timer.20 nbt_smelting.data 1
execute if score #timer.20 nbt_smelting.data matches 20.. run scoreboard players set #timer.20 nbt_smelting.data 0

# Furnace
execute if score #timer.20 nbt_smelting.data matches 0 as @e[tag=nbt_smelting.furnace] at @s run function nbt_smelting:v1.2/furnace/main
execute as @e[tag=nbt_smelting.furnace.active] at @s run function nbt_smelting:v1.2/furnace/process_smelt

# Campfire
execute if score #timer.20 nbt_smelting.data matches 1 as @e[tag=nbt_smelting.campfire] at @s run function nbt_smelting:v1.2/campfire/main
