
schedule function chunk_scan:v2.4/tick_2 2t replace
execute as @e[type=minecraft:marker,tag=chunk_scan.init] at @s run function chunk_scan:v2.4/chunk/init
execute as @r[tag=!chunk_scan.disabled] at @s positioned ~-16 0 ~-16 as @e[distance=0..,type=minecraft:marker,tag=chunk_scan.gen,tag=!chunk_scan.init,sort=nearest,limit=1] at @s if loaded ~ ~ ~ run function chunk_scan:v2.4/chunk/generate
