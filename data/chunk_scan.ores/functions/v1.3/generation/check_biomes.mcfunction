
scoreboard players set #gen.valid_biome chunk_scan.ores.data 0
$execute if score #gen.biome_blacklist chunk_scan.ores.data matches 0 if biome ~ ~ ~ $(biome) run scoreboard players set #gen.valid_biome chunk_scan.ores.data 1
$execute if score #gen.biome_blacklist chunk_scan.ores.data matches 1 unless biome ~ ~ ~ $(biome) run scoreboard players set #gen.valid_biome chunk_scan.ores.data 1
