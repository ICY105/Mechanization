
scoreboard players add #chunk_scan.major load.status 0
scoreboard players add #chunk_scan.minor load.status 0

execute if score #chunk_scan.major load.status matches ..1 run scoreboard players set #chunk_scan.minor load.status 1
execute if score #chunk_scan.major load.status matches ..1 run scoreboard players set #chunk_scan.major load.status 2
execute if score #chunk_scan.major load.status matches 2 if score #chunk_scan.minor load.status matches ..1 run scoreboard players set #chunk_scan.minor load.status 1
