
scoreboard players add #nbt_smelting.major load.status 0
scoreboard players add #nbt_smelting.minor load.status 0

execute if score #nbt_smelting.major load.status matches ..0 run scoreboard players set #nbt_smelting.minor load.status 4
execute if score #nbt_smelting.major load.status matches ..0 run scoreboard players set #nbt_smelting.major load.status 1
execute if score #nbt_smelting.major load.status matches 1 if score #nbt_smelting.minor load.status matches ..4 run scoreboard players set #nbt_smelting.minor load.status 4
