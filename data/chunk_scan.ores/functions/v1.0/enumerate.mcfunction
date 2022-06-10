
scoreboard players add #chunk_scan.ores.major load.status 0
scoreboard players add #chunk_scan.ores.minor load.status 0

execute if score #chunk_scan.ores.major load.status matches ..0 run scoreboard players set #chunk_scan.ores.minor load.status 0
execute if score #chunk_scan.ores.major load.status matches ..0 run scoreboard players set #chunk_scan.ores.major load.status 1
execute if score #chunk_scan.ores.major load.status matches 1 if score #chunk_scan.ores.minor load.status matches ..0 run scoreboard players set #energy.minor load.status 0
