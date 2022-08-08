
schedule function chunk_scan:v2.2/tick_2 2t replace
scoreboard players add @e[type=minecraft:marker,tag=chunk_scan.gen] chunk_scan.delay 1
execute as @e[type=type=minecraft:marker,tag=chunk_scan.init] at @s run function chunk_scan:v2.2/chunk/init
execute as @r[tag=!chunk_scan.disabled] at @s positioned ~-16 0 ~-16 as @e[distance=0..,type=minecraft:marker,tag=chunk_scan.gen,tag=!chunk_scan.init,scores={chunk_scan.delay=12..},sort=nearest,limit=1] at @s run function chunk_scan:v2.2/chunk/generate
