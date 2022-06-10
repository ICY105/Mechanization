
loot spawn ~ 0 ~ loot chunk_scan.ores:v1.0/biomes
execute positioned ~ 0 ~ as @e[type=item,sort=nearest,limit=1] run function chunk_scan.ores:v1.0/utils/get_biome_2 
