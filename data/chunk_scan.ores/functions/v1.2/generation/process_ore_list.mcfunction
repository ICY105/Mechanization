
#load values
execute store result score #gen.id chunk_scan.ores.data run data get storage chunk_scan.ores:generation chunk.list[0].id
execute store result score #gen.min_y chunk_scan.ores.data run data get storage chunk_scan.ores:generation chunk.list[0].min_y
execute store result score #gen.max_y chunk_scan.ores.data run data get storage chunk_scan.ores:generation chunk.list[0].max_y
execute store result score #gen.min_veins chunk_scan.ores.data run data get storage chunk_scan.ores:generation chunk.list[0].min_veins
execute store result score #gen.max_veins chunk_scan.ores.data run data get storage chunk_scan.ores:generation chunk.list[0].max_veins
execute store result score #gen.min_vein_size chunk_scan.ores.data run data get storage chunk_scan.ores:generation chunk.list[0].min_vein_size
execute store result score #gen.max_vein_size chunk_scan.ores.data run data get storage chunk_scan.ores:generation chunk.list[0].max_vein_size
execute store result score #gen.biome_blacklist chunk_scan.ores.data run data get storage chunk_scan.ores:generation chunk.list[0].biome_blacklist
execute store result score #gen.ignore_restrictions chunk_scan.ores.data run data get storage chunk_scan.ores:generation chunk.list[0].ignore_restrictions

#generate veins
scoreboard players operation #utils.min chunk_scan.ores.data = #gen.min_veins chunk_scan.ores.data
scoreboard players operation #utils.max chunk_scan.ores.data = #gen.max_veins chunk_scan.ores.data
function chunk_scan.ores:v1.2/utils/random
scoreboard players operation #gen.veins chunk_scan.ores.data = #utils.out chunk_scan.ores.data
execute if score #gen.veins chunk_scan.ores.data matches 1.. run function chunk_scan.ores:v1.2/generation/generate_veins

### remove entry, then repeat until temp is empty
data remove storage chunk_scan.ores:generation chunk.list[0]
execute if data storage chunk_scan.ores:generation chunk.list[0] run function chunk_scan.ores:v1.2/generation/process_ore_list
