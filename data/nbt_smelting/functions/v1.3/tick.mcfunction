
schedule function nbt_smelting:v1.3/tick 1t

# Timer
scoreboard players add #timer.20 nbt_smelting.data 1
execute if score #timer.20 nbt_smelting.data matches 20.. run scoreboard players set #timer.20 nbt_smelting.data 0

# Furnace
execute as @e[type=minecraft:marker,tag=nbt_smelting.furnace] at @s run function nbt_smelting:v1.3/furnace/tick

# Campfire
execute if score #timer.20 nbt_smelting.data matches 1 as @e[type=minecraft:marker,tag=nbt_smelting.campfire] at @s run function nbt_smelting:v1.3/campfire/main
