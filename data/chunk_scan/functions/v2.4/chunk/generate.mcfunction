
execute at @s[tag=chunk_scan.chunk] unless entity @e[distance=..32,tag=chunk_scan.chunk,tag=!chunk_scan.gen] run function chunk_scan:v2.4/chunk/generate_2
execute at @s[tag=!chunk_scan.chunk] run function chunk_scan:v2.4/chunk/generate_2

tag @s remove chunk_scan.gen
execute unless entity @s[tag=chunk_scan.chunk] run kill @s
kill @e[type=minecraft:marker,tag=chunk_scan.gen,distance=..1]
