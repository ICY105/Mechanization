
#test for dimension ID
data modify storage chunk_scan.ores:registry var set from storage chunk_scan.ores:generation chunk.dimension
execute store success score #gen.failed chunk_scan.ores.data run data modify storage chunk_scan.ores:registry var set from storage chunk_scan.ores:registry custom[0].dimension

#loop until ID is found
execute if score #gen.failed chunk_scan.ores.data matches 1 run data modify storage chunk_scan.ores:registry custom append from storage chunk_scan.ores:registry custom[0]
execute if score #gen.failed chunk_scan.ores.data matches 1 run data remove storage chunk_scan.ores:registry custom[0]

execute if score #gen.failed chunk_scan.ores.data matches 1 run scoreboard players remove #gen.loop chunk_scan.ores.data 1
execute if score #gen.failed chunk_scan.ores.data matches 1 if score #gen.loop chunk_scan.ores.data matches 1.. run function chunk_scan.ores:v1.1/generation/get_ore_list_2
