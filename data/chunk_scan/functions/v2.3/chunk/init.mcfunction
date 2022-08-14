
execute store result entity @s Pos[0] double 48 run data get entity @s Pos[0] 0.0208333
execute store result entity @s Pos[2] double 48 run data get entity @s Pos[2] 0.0208333
tag @s remove chunk_scan.init

tag @s add chunk_scan.temp
execute at @s unless block ~ 0 ~ minecraft:void_air run tag @s remove chunk_scan.temp

kill @s[tag=chunk_scan.temp]


