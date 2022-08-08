
advancement revoke @s only nbt_smelting:v1.3/place_smelting_block

scoreboard players set #loop nbt_smelting.data 512
execute if score #nbt_smelting.major load.status matches 1 if score #nbt_smelting.minor load.status matches 3 anchored eyes positioned ^ ^ ^ run function nbt_smelting:v1.3/furnace/place
