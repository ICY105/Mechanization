execute unless block ~ ~2 ~ melon_stem[age=7] run scoreboard players set temp_0 mechanization.data 1

execute if block ~ ~2 ~ melon_stem[age=6] run setblock ~ ~2 ~ melon_stem[age=7]
execute if block ~ ~2 ~ melon_stem[age=5] run setblock ~ ~2 ~ melon_stem[age=6]
execute if block ~ ~2 ~ melon_stem[age=4] run setblock ~ ~2 ~ melon_stem[age=5]
execute if block ~ ~2 ~ melon_stem[age=3] run setblock ~ ~2 ~ melon_stem[age=4]
execute if block ~ ~2 ~ melon_stem[age=2] run setblock ~ ~2 ~ melon_stem[age=3]
execute if block ~ ~2 ~ melon_stem[age=1] run setblock ~ ~2 ~ melon_stem[age=2]
execute if block ~ ~2 ~ melon_stem[age=0] run setblock ~ ~2 ~ melon_stem[age=1]

execute if score temp_0 mechanization.data matches 0 if block ~1 ~1 ~ #minecraft:dirt_like if block ~1 ~2 ~ air store success score temp_0 mechanization.data run setblock ~1 ~2 ~ melon
execute if score temp_0 mechanization.data matches 0 if block ~-1 ~1 ~ #minecraft:dirt_like if block ~-1 ~2 ~ air store success score temp_0 mechanization.data run setblock ~-1 ~2 ~ melon
execute if score temp_0 mechanization.data matches 0 if block ~ ~1 ~1 #minecraft:dirt_like if block ~ ~2 ~1 air store success score temp_0 mechanization.data run setblock ~ ~2 ~1 melon
execute if score temp_0 mechanization.data matches 0 if block ~ ~1 ~-1 #minecraft:dirt_like if block ~ ~2 ~-1 air store success score temp_0 mechanization.data run setblock ~ ~2 ~-1 melon