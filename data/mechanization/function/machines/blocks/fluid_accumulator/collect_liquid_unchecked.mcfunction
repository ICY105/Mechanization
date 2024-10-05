
scoreboard players set #fluid mechanization.data 0

# liquids
execute if score #fluid mechanization.data matches 0 if block ~ ~1 ~ minecraft:water[level=0] run scoreboard players set #fluid mechanization.data 4
execute if score #fluid mechanization.data matches 4 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"water"}]
execute if score #fluid mechanization.data matches 4 run setblock ~ ~1 ~ minecraft:air
execute if score #fluid mechanization.data matches 4 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 if block ~ ~1 ~ minecraft:lava[level=0] run scoreboard players set #fluid mechanization.data 5
execute if score #fluid mechanization.data matches 5 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score #fluid mechanization.data matches 5 run setblock ~ ~1 ~ minecraft:air
execute if score #fluid mechanization.data matches 5 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 if block ~ ~1 ~ minecraft:water_cauldron[level=3] run scoreboard players set #fluid mechanization.data 1
execute if score #fluid mechanization.data matches 1 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"water"}]
execute if score #fluid mechanization.data matches 1 run setblock ~ ~1 ~ minecraft:cauldron
execute if score #fluid mechanization.data matches 1 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 if block ~ ~1 ~ minecraft:powder_snow_cauldron[level=3] run scoreboard players set #fluid mechanization.data 2
execute if score #fluid mechanization.data matches 2 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"powder_snow"}]
execute if score #fluid mechanization.data matches 2 run setblock ~ ~1 ~ minecraft:cauldron
execute if score #fluid mechanization.data matches 2 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 if block ~ ~1 ~ minecraft:lava_cauldron run scoreboard players set #fluid mechanization.data 3
execute if score #fluid mechanization.data matches 3 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score #fluid mechanization.data matches 3 run setblock ~ ~1 ~ minecraft:cauldron
execute if score #fluid mechanization.data matches 3 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 align xyz positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air if entity @e[type=#mechanization:produces_milk,dx=0,dy=0,dz=0] run scoreboard players set #fluid mechanization.data 6
execute if score #fluid mechanization.data matches 6 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"milk"}]
execute if score #fluid mechanization.data matches 6 run scoreboard players add @s fluid.storage.0 250

execute if score #fluid mechanization.data matches 0 align xyz positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air if entity @e[type=mooshroom,dx=0,dy=0,dz=0] run scoreboard players set #fluid mechanization.data 7
execute if score #fluid mechanization.data matches 7 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"mushroom_stew"}]
execute if score #fluid mechanization.data matches 7 run scoreboard players add @s fluid.storage.0 250

execute if score #fluid mechanization.data matches 0 align xyz positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air as @p[level=31..,dx=0,dy=0,dz=0] run function mechanization:machines/blocks/fluid_accumulator/collect_xp_player
execute if score #fluid mechanization.data matches 0 align xyz positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air as @n[type=experience_orb,dx=0,dy=0,dz=0] run function mechanization:machines/blocks/fluid_accumulator/collect_xp_orb
execute if score #fluid mechanization.data matches 8 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set from storage fluid:definitions fluid_data[{id:"experience"}]
execute if score #fluid mechanization.data matches 8 run scoreboard players operation @s fluid.storage.0 += #amount mechanization.data
