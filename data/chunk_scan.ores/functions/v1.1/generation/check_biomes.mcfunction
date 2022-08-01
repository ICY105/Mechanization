
execute if data storage chunk_scan.ores:generation chunk{biome:""} run function chunk_scan.ores:v1.1/utils/get_biome

#check biome id
data modify storage chunk_scan.ores:registry var set from storage chunk_scan.ores:generation chunk.list[0].biomes[0]
execute store success score #gen.failed chunk_scan.ores.data run data modify storage chunk_scan.ores:registry var set from storage chunk_scan.ores:generation chunk.biome

#mark success
execute if score #gen.failed chunk_scan.ores.data matches 0 run scoreboard players set #gen.has_biome chunk_scan.ores.data 1

#loop list
execute if score #gen.failed chunk_scan.ores.data matches 1 run data remove storage chunk_scan.ores:generation chunk.list[0].biomes[0]
execute if score #gen.failed chunk_scan.ores.data matches 1 if data storage chunk_scan.ores:generation chunk.list[0].biomes[0] run function chunk_scan.ores:v1.1/generation/check_biome
