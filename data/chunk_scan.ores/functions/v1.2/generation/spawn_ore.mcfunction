
#> #gen.id chunk_scan.ores.data: ore id

#check biome
scoreboard players set #gen.has_biome chunk_scan.ores.data 0
execute if score #gen.biome_blacklist chunk_scan.ores.data matches 0..1 if data storage chunk_scan.ores:generation chunk.list[0].biomes[0] run function chunk_scan.ores:v1.2/generation/check_biomes

scoreboard players set #gen.valid_biome chunk_scan.ores.data -1
execute if score #gen.biome_blacklist chunk_scan.ores.data matches -1 run scoreboard players set #gen.valid_biome chunk_scan.ores.data 1
execute if score #gen.biome_blacklist chunk_scan.ores.data matches 0 if score #gen.has_biome chunk_scan.ores.data matches 1 run scoreboard players set #gen.valid_biome chunk_scan.ores.data 1
execute if score #gen.biome_blacklist chunk_scan.ores.data matches 1 if score #gen.has_biome chunk_scan.ores.data matches 0 run scoreboard players set #gen.valid_biome chunk_scan.ores.data 1

#spawn ore
execute if score #gen.valid_biome chunk_scan.ores.data matches 1 if score #gen.ignore_restrictions chunk_scan.ores.data matches 0 run function chunk_scan.ores:v1.2/generation/spawn_ore_normal
execute if score #gen.valid_biome chunk_scan.ores.data matches 1 if score #gen.ignore_restrictions chunk_scan.ores.data matches 1 run function chunk_scan.ores:v1.2/generation/spawn_ore_ignore
