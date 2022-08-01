
#data
data modify storage chunk_scan.ores:generation chunk set value {biome:"", dimension:"", list:[]}
data modify storage chunk_scan.ores:generation chunk.dimension set from entity @p[distance=0..] Dimension

#get pos
tp @s ~ ~ ~
execute store result score #gen.x chunk_scan.ores.data run data get entity @s Pos[0]
execute store result score #gen.y chunk_scan.ores.data run data get entity @s Pos[1]
execute store result score #gen.z chunk_scan.ores.data run data get entity @s Pos[2]
tp @s ~ 0 ~

#generate ores
execute if score #registry.id chunk_scan.ores.data matches 2.. run function chunk_scan.ores:v1.1/generation/get_ore_list
execute if score #registry.id chunk_scan.ores.data matches 2.. if data storage chunk_scan.ores:generation chunk.list[0] run function chunk_scan.ores:v1.1/generation/process_ore_list
