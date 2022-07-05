execute unless block ~ ~2 ~ minecraft:nether_wart[age=3] run scoreboard players set #success mechanization.data 1

execute if block ~ ~2 ~ minecraft:nether_wart[age=2] run setblock ~ ~2 ~ minecraft:nether_wart[age=3]
execute if block ~ ~2 ~ minecraft:nether_wart[age=1] run setblock ~ ~2 ~ minecraft:nether_wart[age=2]
execute if block ~ ~2 ~ minecraft:nether_wart[age=0] run setblock ~ ~2 ~ minecraft:nether_wart[age=1]\
