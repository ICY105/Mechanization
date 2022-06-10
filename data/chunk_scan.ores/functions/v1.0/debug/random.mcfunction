
scoreboard players set #utils.min chunk_scan.ores.data 0
scoreboard players set #utils.max chunk_scan.ores.data 10
function chunk_scan.ores:v1.0/utils/random

execute if score #utils.out chunk_scan.ores.data matches 0 run scoreboard players add $0 test 1
execute if score #utils.out chunk_scan.ores.data matches 1 run scoreboard players add $1 test 1
execute if score #utils.out chunk_scan.ores.data matches 2 run scoreboard players add $2 test 1
execute if score #utils.out chunk_scan.ores.data matches 3 run scoreboard players add $3 test 1
execute if score #utils.out chunk_scan.ores.data matches 4 run scoreboard players add $4 test 1
execute if score #utils.out chunk_scan.ores.data matches 5 run scoreboard players add $5 test 1
execute if score #utils.out chunk_scan.ores.data matches 6 run scoreboard players add $6 test 1
execute if score #utils.out chunk_scan.ores.data matches 7 run scoreboard players add $7 test 1
execute if score #utils.out chunk_scan.ores.data matches 8 run scoreboard players add $8 test 1
execute if score #utils.out chunk_scan.ores.data matches 9 run scoreboard players add $9 test 1
execute if score #utils.out chunk_scan.ores.data matches 10 run scoreboard players add $10 test 1
