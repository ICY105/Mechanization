
# data
data modify storage chunk_scan.ores:generation chunk set value {biome:"", dimension:"", x:0, z:0, list:[]}
data modify storage chunk_scan.ores:generation chunk.dimension set from entity @p[distance=0..] Dimension

# get pos
tp @s ~ ~ ~
data modify storage chunk_scan.ores:temp list set from entity @s Pos
execute store result score #gen.x chunk_scan.ores.data run data get storage chunk_scan.ores:temp list[0]
execute store result score #gen.y chunk_scan.ores.data run data get storage chunk_scan.ores:temp list[1]
execute store result score #gen.z chunk_scan.ores.data run data get storage chunk_scan.ores:temp list[2]
tp @s ~ 0 ~

execute store result storage chunk_scan.ores:generation chunk.x int 1 run scoreboard players get #gen.x chunk_scan.ores.data
execute store result storage chunk_scan.ores:generation chunk.z int 1 run scoreboard players get #gen.z chunk_scan.ores.data

# generate ores
execute if score #registry.id chunk_scan.ores.data matches 2.. run function chunk_scan.ores:v1.3/registry/get_entry with storage chunk_scan.ores:generation chunk

execute if score #registry.id chunk_scan.ores.data matches 2.. if data storage chunk_scan.ores:generation chunk.list[0] run data modify storage chunk_scan.ores:generation chunk.list[0].x set from storage chunk_scan.ores:generation chunk.x
execute if score #registry.id chunk_scan.ores.data matches 2.. if data storage chunk_scan.ores:generation chunk.list[0] run data modify storage chunk_scan.ores:generation chunk.list[0].z set from storage chunk_scan.ores:generation chunk.z
execute if score #registry.id chunk_scan.ores.data matches 2.. if data storage chunk_scan.ores:generation chunk.list[0] run function chunk_scan.ores:v1.3/generation/process_ore_list with storage chunk_scan.ores:generation chunk.list[0]
execute if score #registry.id chunk_scan.ores.data matches 2.. if data storage chunk_scan.ores:generation chunk.list[0] run function chunk_scan.ores:v1.3/generation/reset_seed with storage chunk_scan.ores:generation chunk
