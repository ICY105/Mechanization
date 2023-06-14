
scoreboard players operation #gen.displace_y chunk_scan.ores.data %= #cons.16 chunk_scan.ores.data

execute if score #gen.displace_y chunk_scan.ores.data matches 0 positioned ~ ~0 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 1 positioned ~ ~1 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 2 positioned ~ ~2 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 3 positioned ~ ~3 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 4 positioned ~ ~4 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 5 positioned ~ ~5 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 6 positioned ~ ~6 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 7 positioned ~ ~7 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 8 positioned ~ ~8 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 9 positioned ~ ~9 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 10 positioned ~ ~10 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 11 positioned ~ ~11 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 12 positioned ~ ~12 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 13 positioned ~ ~13 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 14 positioned ~ ~14 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore
execute if score #gen.displace_y chunk_scan.ores.data matches 15 positioned ~ ~15 ~ run function chunk_scan.ores:v1.2/generation/spawn_ore

scoreboard players set #gen.displace_y chunk_scan.ores.data -2000000000
