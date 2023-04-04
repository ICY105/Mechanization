
execute positioned ~48 0 ~ unless entity @e[type=marker,tag=chunk_scan.chunk,distance=..24] run function chunk_scan:v2.4/entities/summon_chunk_marker
execute positioned ~-48 0 ~ unless entity @e[type=marker,tag=chunk_scan.chunk,distance=..24] run function chunk_scan:v2.4/entities/summon_chunk_marker
execute positioned ~ 0 ~48 unless entity @e[type=marker,tag=chunk_scan.chunk,distance=..24] run function chunk_scan:v2.4/entities/summon_chunk_marker
execute positioned ~ 0 ~-48 unless entity @e[type=marker,tag=chunk_scan.chunk,distance=..24] run function chunk_scan:v2.4/entities/summon_chunk_marker

execute positioned ~16 0 ~16 run function chunk_scan:v2.4/entities/summon_gen_marker
execute positioned ~16 0 ~ run function chunk_scan:v2.4/entities/summon_gen_marker
execute positioned ~16 0 ~-16 run function chunk_scan:v2.4/entities/summon_gen_marker
execute positioned ~ 0 ~16 run function chunk_scan:v2.4/entities/summon_gen_marker
execute positioned ~ 0 ~-16 run function chunk_scan:v2.4/entities/summon_gen_marker
execute positioned ~-16 0 ~16 run function chunk_scan:v2.4/entities/summon_gen_marker
execute positioned ~-16 0 ~ run function chunk_scan:v2.4/entities/summon_gen_marker
execute positioned ~-16 0 ~-16 run function chunk_scan:v2.4/entities/summon_gen_marker
