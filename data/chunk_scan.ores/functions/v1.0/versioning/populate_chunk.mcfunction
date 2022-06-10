
execute if score #chunk_scan.ores.major load.status matches 1 if score #chunk_scan.ores.minor load.status matches 0 run function chunk_scan.ores:v1.0/generation/populate_chunk
