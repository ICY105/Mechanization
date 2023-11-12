
# load values
execute store result score #gen.id chunk_scan.ores.data run data get storage chunk_scan.ores:generation chunk.list[0].id
execute store result score #gen.biome_blacklist chunk_scan.ores.data run data get storage chunk_scan.ores:generation chunk.list[0].biome_blacklist
execute store result score #gen.ignore_restrictions chunk_scan.ores.data run data get storage chunk_scan.ores:generation chunk.list[0].ignore_restrictions

# generate veins
$execute store result score #gen.veins chunk_scan.ores.data run random value $(min_veins)..$(max_veins) chunk_scan:$(x)_$(z)
$execute if score #gen.veins chunk_scan.ores.data matches 0 run scoreboard players set #gen.veins chunk_scan.ores.data $(min_veins)
execute if score #gen.veins chunk_scan.ores.data matches 1.. run function chunk_scan.ores:v1.3/generation/generate_veins with storage chunk_scan.ores:generation chunk.list[0]

### remove entry, then repeat until temp is empty
data remove storage chunk_scan.ores:generation chunk.list[0]
execute if data storage chunk_scan.ores:generation chunk.list[0] run data modify storage chunk_scan.ores:generation chunk.list[0].x set from storage chunk_scan.ores:generation chunk.x
execute if data storage chunk_scan.ores:generation chunk.list[0] run data modify storage chunk_scan.ores:generation chunk.list[0].z set from storage chunk_scan.ores:generation chunk.z
execute if data storage chunk_scan.ores:generation chunk.list[0] run function chunk_scan.ores:v1.3/generation/process_ore_list with storage chunk_scan.ores:generation chunk.list[0]
