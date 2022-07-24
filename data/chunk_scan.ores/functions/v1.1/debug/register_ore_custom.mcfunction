
scoreboard players set #registry.min_y chunk_scan.ores.data 0
scoreboard players set #registry.max_y chunk_scan.ores.data 16
scoreboard players set #registry.min_veins chunk_scan.ores.data 1
scoreboard players set #registry.max_veins chunk_scan.ores.data 4
scoreboard players set #registry.min_vein_size chunk_scan.ores.data 2
scoreboard players set #registry.max_vein_size chunk_scan.ores.data 8
scoreboard players set #registry.ignore_restrictions chunk_scan.ores.data 1
data modify storage chunk_scan.ores:registry input set value {dimension:"test:debug"}

function chunk_scan.ores:v1/api/register_ore
tellraw @p {"score":{"name":"#registry.result_id","objective":"chunk_scan.ores.data"}}
