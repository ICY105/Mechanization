
# copy ore registry to list if preset dimension
scoreboard players set #gen.success chunk_scan.ores.data 0
execute if data storage chunk_scan.ores:generation chunk{dimension:"minecraft:overworld"} store success score #gen.success chunk_scan.ores.data run data modify storage chunk_scan.ores:generation chunk.list set from storage chunk_scan.ores:registry overworld
execute if data storage chunk_scan.ores:generation chunk{dimension:"minecraft:the_nether"} store success score #gen.success chunk_scan.ores.data run data modify storage chunk_scan.ores:generation chunk.list set from storage chunk_scan.ores:registry the_nether
execute if data storage chunk_scan.ores:generation chunk{dimension:"minecraft:the_end"} store success score #gen.success chunk_scan.ores.data run data modify storage chunk_scan.ores:generation chunk.list set from storage chunk_scan.ores:registry the_end

# get custom dimension if needed
execute if score #gen.success chunk_scan.ores.data matches 0 store result score #gen.loop chunk_scan.ores.data run data get storage chunk_scan.ores:registry custom
execute if score #gen.success chunk_scan.ores.data matches 0 if score #gen.loop chunk_scan.ores.data matches 1.. run function chunk_scan.ores:v1.3/generation/get_ore_list_2
execute if score #gen.success chunk_scan.ores.data matches 0 if score #gen.loop chunk_scan.ores.data matches 1.. run data modify storage chunk_scan.ores:generation chunk.list set from storage chunk_scan.ores:registry custom[0].list
