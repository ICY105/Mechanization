
### config values

# X value
scoreboard players set #utils.min chunk_scan.ores.data 0
scoreboard players set #utils.max chunk_scan.ores.data 15
function chunk_scan.ores:v1.1/utils/random
scoreboard players operation #gen.displace_x chunk_scan.ores.data = #utils.out chunk_scan.ores.data

# Z value
scoreboard players set #utils.min chunk_scan.ores.data 0
scoreboard players set #utils.max chunk_scan.ores.data 15
function chunk_scan.ores:v1.1/utils/random
scoreboard players operation #gen.displace_z chunk_scan.ores.data = #utils.out chunk_scan.ores.data

# Y value
scoreboard players operation #utils.min chunk_scan.ores.data = #gen.min_y chunk_scan.ores.data
scoreboard players operation #utils.max chunk_scan.ores.data = #gen.max_y chunk_scan.ores.data
function chunk_scan.ores:v1.1/utils/random
scoreboard players operation #gen.displace_y chunk_scan.ores.data = #utils.out chunk_scan.ores.data

# Vein Size
scoreboard players operation #utils.min chunk_scan.ores.data = #gen.min_vein_size chunk_scan.ores.data
scoreboard players operation #utils.max chunk_scan.ores.data = #gen.max_vein_size chunk_scan.ores.data
function chunk_scan.ores:v1.1/utils/random
scoreboard players operation #gen.vein_size chunk_scan.ores.data = #utils.out chunk_scan.ores.data

#displace
execute if score #gen.displace_y chunk_scan.ores.data > #gen.y chunk_scan.ores.data if score #gen.vein_size chunk_scan.ores.data matches 1.. run function chunk_scan.ores:v1.1/generation/displace_x

#loop
scoreboard players remove #gen.veins chunk_scan.ores.data 1
execute if score #gen.veins chunk_scan.ores.data matches 1.. run function chunk_scan.ores:v1.1/generation/generate_veins
