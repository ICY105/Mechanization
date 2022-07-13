execute unless block ~ ~2 ~ minecraft:melon_stem[age=7] run scoreboard players set #success mechanization.data 1

execute if block ~ ~2 ~ minecraft:melon_stem[age=6] run setblock ~ ~2 ~ minecraft:melon_stem[age=7]
execute if block ~ ~2 ~ minecraft:melon_stem[age=5] run setblock ~ ~2 ~ minecraft:melon_stem[age=6]
execute if block ~ ~2 ~ minecraft:melon_stem[age=4] run setblock ~ ~2 ~ minecraft:melon_stem[age=5]
execute if block ~ ~2 ~ minecraft:melon_stem[age=3] run setblock ~ ~2 ~ minecraft:melon_stem[age=4]
execute if block ~ ~2 ~ minecraft:melon_stem[age=2] run setblock ~ ~2 ~ minecraft:melon_stem[age=3]
execute if block ~ ~2 ~ minecraft:melon_stem[age=1] run setblock ~ ~2 ~ minecraft:melon_stem[age=2]
execute if block ~ ~2 ~ minecraft:melon_stem[age=0] run setblock ~ ~2 ~ minecraft:melon_stem[age=1]

execute if score #success mechanization.data matches 0 if block ~1 ~1 ~ #mechanization:dirt if block ~1 ~2 ~ minecraft:air store success score #success mechanization.data run setblock ~1 ~2 ~ minecraft:melon
execute if score #success mechanization.data matches 0 if block ~-1 ~1 ~ #mechanization:dirt if block ~-1 ~2 ~ minecraft:air store success score #success mechanization.data run setblock ~-1 ~2 ~ minecraft:melon
execute if score #success mechanization.data matches 0 if block ~ ~1 ~1 #mechanization:dirt if block ~ ~2 ~1 minecraft:air store success score #success mechanization.data run setblock ~ ~2 ~1 minecraft:melon
execute if score #success mechanization.data matches 0 if block ~ ~1 ~-1 #mechanization:dirt if block ~ ~2 ~-1 minecraft:air store success score #success mechanization.data run setblock ~ ~2 ~-1 minecraft:melon
