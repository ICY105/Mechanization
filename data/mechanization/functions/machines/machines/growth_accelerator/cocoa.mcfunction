execute unless block ~ ~2 ~ minecraft:cocoa[age=2] run scoreboard players set #success mechanization.data 1

execute if block ~ ~2 ~ minecraft:cocoa[age=1] run setblock ~ ~2 ~ minecraft:cocoa[age=2]
execute if block ~ ~2 ~ minecraft:cocoa[age=0] run setblock ~ ~2 ~ minecraft:cocoa[age=1]
