execute unless block ~ ~2 ~ cocoa[age=2] run scoreboard players set temp_0 mechanization.data 1

execute if block ~ ~2 ~ cocoa[age=1] run setblock ~ ~2 ~ cocoa[age=2]
execute if block ~ ~2 ~ cocoa[age=0] run setblock ~ ~2 ~ cocoa[age=1]