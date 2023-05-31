execute unless block ~ ~2 ~ minecraft:carrots[age=7] run scoreboard players set #success mechanization.data 1

execute if block ~ ~2 ~ minecraft:carrots[age=6] run setblock ~ ~2 ~ minecraft:carrots[age=7]
execute if block ~ ~2 ~ minecraft:carrots[age=5] run setblock ~ ~2 ~ minecraft:carrots[age=6]
execute if block ~ ~2 ~ minecraft:carrots[age=4] run setblock ~ ~2 ~ minecraft:carrots[age=5]
execute if block ~ ~2 ~ minecraft:carrots[age=3] run setblock ~ ~2 ~ minecraft:carrots[age=4]
execute if block ~ ~2 ~ minecraft:carrots[age=2] run setblock ~ ~2 ~ minecraft:carrots[age=3]
execute if block ~ ~2 ~ minecraft:carrots[age=1] run setblock ~ ~2 ~ minecraft:carrots[age=2]
execute if block ~ ~2 ~ minecraft:carrots[age=0] run setblock ~ ~2 ~ minecraft:carrots[age=1]