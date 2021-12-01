execute unless block ~ ~2 ~ beetroots[age=3] run scoreboard players set temp_0 mech_data 1

execute if block ~ ~2 ~ beetroots[age=2] run setblock ~ ~2 ~ beetroots[age=3]
execute if block ~ ~2 ~ beetroots[age=1] run setblock ~ ~2 ~ beetroots[age=2]
execute if block ~ ~2 ~ beetroots[age=0] run setblock ~ ~2 ~ beetroots[age=1]