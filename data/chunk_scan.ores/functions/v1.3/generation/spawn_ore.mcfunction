
# check biome
scoreboard players set #gen.valid_biome chunk_scan.ores.data 1
execute if score #gen.biome_blacklist chunk_scan.ores.data matches 0..1 if data storage chunk_scan.ores:generation chunk.list[0].biome run function chunk_scan.ores:v1.3/generation/check_biomes with storage chunk_scan.ores:generation chunk.list[0]

# spawn ore
execute if score #gen.valid_biome chunk_scan.ores.data matches 1 if score #gen.ignore_restrictions chunk_scan.ores.data matches 0 run function chunk_scan.ores:v1.3/generation/spawn_ore_normal
execute if score #gen.valid_biome chunk_scan.ores.data matches 1 if score #gen.ignore_restrictions chunk_scan.ores.data matches 1 run function chunk_scan.ores:v1.3/generation/spawn_ore_ignore
