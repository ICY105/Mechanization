execute unless block ~ ~2 ~ melon_stem[age=7] run scoreboard players set temp_0 mech_data 1

execute if block ~ ~2 ~ melon_stem[age=6] run setblock ~ ~2 ~ melon_stem[age=7]
execute if block ~ ~2 ~ melon_stem[age=5] run setblock ~ ~2 ~ melon_stem[age=6]
execute if block ~ ~2 ~ melon_stem[age=4] run setblock ~ ~2 ~ melon_stem[age=5]
execute if block ~ ~2 ~ melon_stem[age=3] run setblock ~ ~2 ~ melon_stem[age=4]
execute if block ~ ~2 ~ melon_stem[age=2] run setblock ~ ~2 ~ melon_stem[age=3]
execute if block ~ ~2 ~ melon_stem[age=1] run setblock ~ ~2 ~ melon_stem[age=2]
execute if block ~ ~2 ~ melon_stem[age=0] run setblock ~ ~2 ~ melon_stem[age=1]