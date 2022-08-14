
schedule function chunk_scan:v2.3/tick_20 20t replace
execute as @r[tag=!chunk_scan.disabled] at @s positioned ~16 0 ~16 unless entity @e[distance=..75,type=minecraft:marker,tag=chunk_scan.chunk] positioned ~ 0 ~ run summon minecraft:marker ~ 0 ~ {Tags:["chunk_scan.init","chunk_scan.chunk","chunk_scan.gen","smithed.ignore","smithed.entity","smithed.strict"]}
