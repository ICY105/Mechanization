
scoreboard players set #fluid mechanization.data 0
data modify storage mechanization:temp obj.id set from entity @s item.components."minecraft:custom_data".fluids[0].id

# Fluids
execute if score #fluid mechanization.data matches 0 if score @s fluid.storage.0 matches ..3000 if data storage mechanization:temp obj{id:"water"} if block ~ ~1 ~ minecraft:water[level=0] run scoreboard players set #fluid mechanization.data 4
execute if score #fluid mechanization.data matches 4 run setblock ~ ~1 ~ minecraft:air
execute if score #fluid mechanization.data matches 4 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 if score @s fluid.storage.0 matches ..3000 if data storage mechanization:temp obj{id:"lava"} if block ~ ~1 ~ minecraft:lava[level=0] run scoreboard players set #fluid mechanization.data 5
execute if score #fluid mechanization.data matches 5 run setblock ~ ~1 ~ minecraft:air
execute if score #fluid mechanization.data matches 5 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 if score @s fluid.storage.0 matches ..3000 if data storage mechanization:temp obj{id:"water"} if block ~ ~1 ~ minecraft:water_cauldron[level=3] run scoreboard players set #fluid mechanization.data 1
execute if score #fluid mechanization.data matches 1 run setblock ~ ~1 ~ minecraft:cauldron
execute if score #fluid mechanization.data matches 1 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 if score @s fluid.storage.0 matches ..3000 if data storage mechanization:temp obj{id:"powder_snow"} if block ~ ~1 ~ minecraft:powder_snow_cauldron[level=3] run scoreboard players set #fluid mechanization.data 2
execute if score #fluid mechanization.data matches 2 run setblock ~ ~1 ~ minecraft:cauldron
execute if score #fluid mechanization.data matches 2 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 if score @s fluid.storage.0 matches ..3000 if data storage mechanization:temp obj{id:"lava"} if block ~ ~1 ~ minecraft:lava_cauldron run scoreboard players set #fluid mechanization.data 3
execute if score #fluid mechanization.data matches 3 run setblock ~ ~1 ~ minecraft:cauldron
execute if score #fluid mechanization.data matches 3 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 if score @s fluid.storage.0 matches ..3750 if data storage mechanization:temp obj{id:"milk"} align xyz positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air if entity @e[type=#mechanization:produces_milk,dx=0,dy=0,dz=0] run scoreboard players set #fluid mechanization.data 6
execute if score #fluid mechanization.data matches 6 run scoreboard players add @s fluid.storage.0 250

execute if score #fluid mechanization.data matches 0 if score @s fluid.storage.0 matches ..3750 if data storage mechanization:temp obj{id:"mushroom_stew"} align xyz positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air if entity @e[type=minecraft:mooshroom,dx=0,dy=0,dz=0] run scoreboard players set #fluid mechanization.data 7
execute if score #fluid mechanization.data matches 7 run scoreboard players add @s fluid.storage.0 250

execute if score #fluid mechanization.data matches 0 if score @s fluid.storage.0 matches ..3950 if data storage mechanization:temp obj{id:"experience"} align xyz positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air as @p[level=31..,dx=0,dy=0,dz=0] run function mechanization:machines/blocks/fluid_accumulator/collect_xp_player
execute if score #fluid mechanization.data matches 0 if score @s fluid.storage.0 matches ..3950 if data storage mechanization:temp obj{id:"experience"} align xyz positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air as @n[type=minecraft:experience_orb,dx=0,dy=0,dz=0] run function mechanization:machines/blocks/fluid_accumulator/collect_xp_orb
execute if score #fluid mechanization.data matches 8 run scoreboard players operation @s fluid.storage.0 += #amount mechanization.data
