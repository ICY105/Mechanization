
#data
item replace block -30000000 0 3201 container.0 with minecraft:air
scoreboard players set #fluid mechanization.data 0

#liquids
execute if score #fluid mechanization.data matches 0 if block ~ ~1 ~ minecraft:water[level=0] run scoreboard players set #fluid mechanization.data 4
execute if score #fluid mechanization.data matches 4 run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"water"}]
execute if score #fluid mechanization.data matches 4 run setblock ~ ~1 ~ minecraft:air
execute if score #fluid mechanization.data matches 4 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 if block ~ ~1 ~ minecraft:lava[level=0] run scoreboard players set #fluid mechanization.data 5
execute if score #fluid mechanization.data matches 5 run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score #fluid mechanization.data matches 5 run setblock ~ ~1 ~ minecraft:air
execute if score #fluid mechanization.data matches 5 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 if block ~ ~1 ~ minecraft:water_cauldron[level=3] run scoreboard players set #fluid mechanization.data 1
execute if score #fluid mechanization.data matches 1 run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"water"}]
execute if score #fluid mechanization.data matches 1 run setblock ~ ~1 ~ minecraft:cauldron
execute if score #fluid mechanization.data matches 1 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 if block ~ ~1 ~ minecraft:powder_snow_cauldron[level=3] run scoreboard players set #fluid mechanization.data 2
execute if score #fluid mechanization.data matches 2 run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"powder_snow"}]
execute if score #fluid mechanization.data matches 2 run setblock ~ ~1 ~ minecraft:cauldron
execute if score #fluid mechanization.data matches 2 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 if block ~ ~1 ~ minecraft:lava_cauldron run scoreboard players set #fluid mechanization.data 3
execute if score #fluid mechanization.data matches 3 run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if score #fluid mechanization.data matches 3 run setblock ~ ~1 ~ minecraft:cauldron
execute if score #fluid mechanization.data matches 3 run scoreboard players add @s fluid.storage.0 1000

execute if score #fluid mechanization.data matches 0 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air if entity @e[type=#mechanization:produces_milk,distance=..1] run scoreboard players set #fluid mechanization.data 6
execute if score #fluid mechanization.data matches 6 run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"milk"}]
execute if score #fluid mechanization.data matches 6 run scoreboard players add @s fluid.storage.0 250

execute if score #fluid mechanization.data matches 0 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air if entity @e[type=mooshroom,distance=..1] run scoreboard players set #fluid mechanization.data 6
execute if score #fluid mechanization.data matches 6 run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"mushroom_stew"}]
execute if score #fluid mechanization.data matches 6 run scoreboard players add @s fluid.storage.0 250

execute if score #fluid mechanization.data matches 0 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air as @p[distance=..1,level=31..] run function mechanization:machines/blocks/liquid_accumulator/collect_xp_player
execute if score #fluid mechanization.data matches 0 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air as @e[type=experience_orb,distance=..1,limit=1] run function mechanization:machines/blocks/liquid_accumulator/collect_xp_orb
execute if score #fluid mechanization.data matches 8 run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"experience"}]
execute if score #fluid mechanization.data matches 8 run scoreboard players operation @s fluid.storage.0 += #amount mechanization.data

#cleanup
execute if data block -30000000 0 3201 Items[{Slot:0b}] run data modify entity @s Item.tag.tank set from block -30000000 0 3201 Items[{Slot:0b}]
