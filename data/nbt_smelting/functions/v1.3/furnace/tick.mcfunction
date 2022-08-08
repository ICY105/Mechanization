
execute if score #timer.20 nbt_smelting.data matches 0 run function nbt_smelting:v1.3/furnace/main
execute if entity @s[tag=nbt_smelting.furnace.active] run function nbt_smelting:v1.3/furnace/process_smelt
