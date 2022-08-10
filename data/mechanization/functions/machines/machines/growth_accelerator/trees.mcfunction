
scoreboard players set #tree mechanization.data 0

# get sapling type
execute if block ~ ~1 ~ #mechanization:dirt if block ~ ~2 ~ minecraft:oak_sapling run scoreboard players set #tree mechanization.data 1
execute if block ~ ~1 ~ #mechanization:dirt if block ~ ~2 ~ minecraft:birch_sapling run scoreboard players set #tree mechanization.data 2
execute if block ~ ~1 ~ #mechanization:dirt if block ~ ~2 ~ minecraft:jungle_sapling run scoreboard players set #tree mechanization.data 3
execute if block ~ ~1 ~ #mechanization:dirt if block ~ ~2 ~ minecraft:spruce_sapling run scoreboard players set #tree mechanization.data 4
execute if block ~ ~1 ~ #mechanization:dirt if block ~ ~2 ~ minecraft:acacia_sapling run scoreboard players set #tree mechanization.data 5
execute if block ~ ~1 ~ #mechanization:dirt if block ~ ~2 ~ minecraft:dark_oak_sapling run scoreboard players set #tree mechanization.data 6
execute if block ~ ~1 ~ #mechanization:dirt if block ~ ~2 ~ minecraft:mangrove_propagule run scoreboard players set #tree mechanization.data 7

execute if block ~ ~1 ~ minecraft:crimson_nylium if block ~ ~2 ~ minecraft:crimson_fungus run scoreboard players set #tree mechanization.data 8
execute if block ~ ~1 ~ minecraft:warped_nylium if block ~ ~2 ~ minecraft:warped_fungus run scoreboard players set #tree mechanization.data 9

# attempt to place
execute if score #tree mechanization.data matches 1.. run setblock ~ ~2 ~ minecraft:air

execute if score #tree mechanization.data matches 1 positioned ~ ~2 ~ run place feature minecraft:oak
execute if score #tree mechanization.data matches 2 positioned ~ ~2 ~ run place feature minecraft:birch
execute if score #tree mechanization.data matches 3 positioned ~ ~2 ~ run place feature minecraft:jungle_tree
execute if score #tree mechanization.data matches 4 positioned ~ ~2 ~ run place feature minecraft:spruce
execute if score #tree mechanization.data matches 5 positioned ~ ~2 ~ run place feature minecraft:acacia
execute if score #tree mechanization.data matches 6 positioned ~ ~2 ~ run place feature minecraft:dark_oak
execute if score #tree mechanization.data matches 7 positioned ~ ~2 ~ run place feature minecraft:mangrove

execute if score #tree mechanization.data matches 8 positioned ~ ~2 ~ run place feature minecraft:crimson_fungus
execute if score #tree mechanization.data matches 9 positioned ~ ~2 ~ run place feature minecraft:warped_fungus

# replace sapling if tree didn't grow
execute if score #tree mechanization.data matches 1 unless block ~ ~2 ~ minecraft:oak_log run setblock ~ ~2 ~ minecraft:oak_sapling
execute if score #tree mechanization.data matches 2 unless block ~ ~2 ~ minecraft:birch_log run setblock ~ ~2 ~ minecraft:birch_sapling
execute if score #tree mechanization.data matches 3 unless block ~ ~2 ~ minecraft:jungle_log run setblock ~ ~2 ~ minecraft:jungle_sapling
execute if score #tree mechanization.data matches 4 unless block ~ ~2 ~ minecraft:spruce_log run setblock ~ ~2 ~ minecraft:spruce_log
execute if score #tree mechanization.data matches 5 unless block ~ ~2 ~ minecraft:acacia_log run setblock ~ ~2 ~ minecraft:acacia_sapling
execute if score #tree mechanization.data matches 6 unless block ~ ~2 ~ minecraft:dark_oak_log run setblock ~ ~2 ~ minecraft:dark_oak_sapling

execute if score #tree mechanization.data matches 8 unless block ~ ~2 ~ minecraft:crimson_stem run setblock ~ ~2 ~ minecraft:crimson_fungus
execute if score #tree mechanization.data matches 9 unless block ~ ~2 ~ minecraft:warped_stem run setblock ~ ~2 ~ minecraft:warped_fungus
