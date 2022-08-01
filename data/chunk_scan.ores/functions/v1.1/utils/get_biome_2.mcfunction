
data modify storage chunk_scan.ores:generation chunk.biome set from entity @s Item.tag.biome_id
execute if data storage chunk_scan.ores:generation chunk{biome:"unknown"} run function #chunk_scan.ores:v1/custom_biomes
kill @s
