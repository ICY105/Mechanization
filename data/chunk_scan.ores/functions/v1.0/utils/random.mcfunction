
# Modified from git@Aeldrion/Minecraft-Random

#> #utils.min: max output value
#> #utils.max: max output value
#< #utils.out: generated number

# Calculate size of range
scoreboard players operation #utils.size chunk_scan.ores.data = #utils.max chunk_scan.ores.data
scoreboard players operation #utils.size chunk_scan.ores.data -= #utils.min chunk_scan.ores.data
scoreboard players add #utils.size chunk_scan.ores.data 1

# Xn+1 = (aXn + c) mod m
scoreboard players operation #utils.lcg chunk_scan.ores.data *= #utils.lcg_a chunk_scan.ores.data
scoreboard players operation #utils.lcg chunk_scan.ores.data += #utils.lcg_c chunk_scan.ores.data
scoreboard players operation #utils.lcg chunk_scan.ores.data %= #utils.lcg_m chunk_scan.ores.data

# Trim "low quality" bits
scoreboard players operation #utils.out chunk_scan.ores.data = #utils.lcg chunk_scan.ores.data
scoreboard players operation #utils.out chunk_scan.ores.data /= #cons.8 chunk_scan.ores.data

# Get within desired range
scoreboard players operation #utils.out chunk_scan.ores.data %= #utils.size chunk_scan.ores.data
scoreboard players operation #utils.out chunk_scan.ores.data += #utils.min chunk_scan.ores.data

#check for 0 range
execute if score #utils.size chunk_scan.ores.data matches 0 run scoreboard players set #utils.out chunk_scan.ores.data 0
