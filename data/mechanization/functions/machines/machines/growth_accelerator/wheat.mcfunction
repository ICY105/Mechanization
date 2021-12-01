execute unless block ~ ~2 ~ wheat[age=7] run scoreboard players set temp_0 mech_data 1

execute if block ~ ~2 ~ wheat[age=6] run setblock ~ ~2 ~ wheat[age=7]
execute if block ~ ~2 ~ wheat[age=5] run setblock ~ ~2 ~ wheat[age=6]
execute if block ~ ~2 ~ wheat[age=4] run setblock ~ ~2 ~ wheat[age=5]
execute if block ~ ~2 ~ wheat[age=3] run setblock ~ ~2 ~ wheat[age=4]
execute if block ~ ~2 ~ wheat[age=2] run setblock ~ ~2 ~ wheat[age=3]
execute if block ~ ~2 ~ wheat[age=1] run setblock ~ ~2 ~ wheat[age=2]
execute if block ~ ~2 ~ wheat[age=0] run setblock ~ ~2 ~ wheat[age=1]