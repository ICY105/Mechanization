execute unless block ~ ~2 ~ sweet_berry_bush[age=2] run scoreboard players set temp_0 mech_data 1

execute if block ~ ~2 ~ sweet_berry_bush[age=1] run setblock ~ ~2 ~ sweet_berry_bush[age=2]
execute if block ~ ~2 ~ sweet_berry_bush[age=0] run setblock ~ ~2 ~ sweet_berry_bush[age=1]