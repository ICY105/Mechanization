
# init entry
data modify storage chunk_scan.ores:registry temp set value {id:-1, min_y:-1, max_y:-1, min_veins:-1, max_veins:-1, min_vein_size:-1, max_vein_size:-1, ignore_restrictions:0b, biome_blacklist:-1b, dimension:"minecraft:overworld", biome:""}

# copy optioanl data
execute if data storage chunk_scan.ores:registry input.dimension run data modify storage chunk_scan.ores:registry temp.dimension set from storage chunk_scan.ores:registry input.dimension
execute if data storage chunk_scan.ores:registry input.biome run data modify storage chunk_scan.ores:registry temp.biome set from storage chunk_scan.ores:registry input.biome
execute if data storage chunk_scan.ores:registry input.biome run data modify storage chunk_scan.ores:registry temp.biome_blacklist set from storage chunk_scan.ores:registry input.biome_blacklist

# id
execute store result storage chunk_scan.ores:registry temp.id int 1 run scoreboard players get #registry.id chunk_scan.ores.data
scoreboard players operation #registry.result_id chunk_scan.ores.data = #registry.id chunk_scan.ores.data
scoreboard players add #registry.id chunk_scan.ores.data 1

# y values
execute store result storage chunk_scan.ores:registry temp.min_y int 1 run scoreboard players get #registry.min_y chunk_scan.ores.data
execute store result storage chunk_scan.ores:registry temp.max_y int 1 run scoreboard players get #registry.max_y chunk_scan.ores.data

# veins
execute store result storage chunk_scan.ores:registry temp.min_veins int 1 run scoreboard players get #registry.min_veins chunk_scan.ores.data
execute store result storage chunk_scan.ores:registry temp.max_veins int 1 run scoreboard players get #registry.max_veins chunk_scan.ores.data

# vein size
execute store result storage chunk_scan.ores:registry temp.min_vein_size int 1 run scoreboard players get #registry.min_vein_size chunk_scan.ores.data
execute store result storage chunk_scan.ores:registry temp.max_vein_size int 1 run scoreboard players get #registry.max_vein_size chunk_scan.ores.data

# placement restriction
execute store result storage chunk_scan.ores:registry temp.ignore_restrictions int 1 run scoreboard players get #registry.ignore_restrictions chunk_scan.ores.data

# register ore to dimension dimension
function chunk_scan.ores:v1.3/registry/register_ore_3 with storage chunk_scan.ores:registry temp

# cleanup
data remove storage chunk_scan.ores:registry temp
