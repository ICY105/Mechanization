
#add entry
data modify storage chunk_scan.ores:registry temp set value {id:-1, min_y:-1, max_y:-1, min_veins:-1, max_veins:-1, min_vein_size:-1, max_vein_size:-1, ignore_restrictions:0b, biome_blacklist:-1b, dimension:"minecraft:overworld", biomes:[]}

#copy optioanl data
execute if data storage chunk_scan.ores:registry input.dimension run data modify storage chunk_scan.ores:registry temp.dimension set from storage chunk_scan.ores:registry input.dimension
execute if data storage chunk_scan.ores:registry input.biomes[0] run data modify storage chunk_scan.ores:registry temp.biomes set from storage chunk_scan.ores:registry input.biomes
execute if data storage chunk_scan.ores:registry input.biomes[0] run data modify storage chunk_scan.ores:registry temp.biome_blacklist set from storage chunk_scan.ores:registry input.biome_blacklist

#id
execute store result storage chunk_scan.ores:registry temp.id int 1 run scoreboard players get #registry.id chunk_scan.ores.data
scoreboard players operation #registry.result_id chunk_scan.ores.data = #registry.id chunk_scan.ores.data
scoreboard players add #registry.id chunk_scan.ores.data 1

#y values
execute store result storage chunk_scan.ores:registry temp.min_y int 1 run scoreboard players get #registry.min_y chunk_scan.ores.data
execute store result storage chunk_scan.ores:registry temp.max_y int 1 run scoreboard players get #registry.max_y chunk_scan.ores.data

#veins
execute store result storage chunk_scan.ores:registry temp.min_veins int 1 run scoreboard players get #registry.min_veins chunk_scan.ores.data
execute store result storage chunk_scan.ores:registry temp.max_veins int 1 run scoreboard players get #registry.max_veins chunk_scan.ores.data

#vein size
execute store result storage chunk_scan.ores:registry temp.min_vein_size int 1 run scoreboard players get #registry.min_vein_size chunk_scan.ores.data
execute store result storage chunk_scan.ores:registry temp.max_vein_size int 1 run scoreboard players get #registry.max_vein_size chunk_scan.ores.data

#placement restriction
execute store result storage chunk_scan.ores:registry temp.ignore_restrictions int 1 run scoreboard players get #registry.ignore_restrictions chunk_scan.ores.data

#check dimension
scoreboard players set #registry.temp chunk_scan.ores.data 0
execute if data storage chunk_scan.ores:registry temp{dimension:"minecraft:overworld"} store success score #registry.temp chunk_scan.ores.data run data modify storage chunk_scan.ores:registry overworld append from storage chunk_scan.ores:registry temp
execute if data storage chunk_scan.ores:registry temp{dimension:"minecraft:the_end"} store success score #registry.temp chunk_scan.ores.data run data modify storage chunk_scan.ores:registry the_end append from storage chunk_scan.ores:registry temp
execute if data storage chunk_scan.ores:registry temp{dimension:"minecraft:the_nether"} store success score #registry.temp chunk_scan.ores.data run data modify storage chunk_scan.ores:registry the_nether append from storage chunk_scan.ores:registry temp

execute if score #registry.temp chunk_scan.ores.data matches 0 store result score #registry.loop chunk_scan.ores.data run data get storage chunk_scan.ores:registry custom
execute if score #registry.temp chunk_scan.ores.data matches 0 if score #registry.loop chunk_scan.ores.data matches 1.. run function chunk_scan.ores:v1.2/registry/register_ore_3
execute if score #registry.temp chunk_scan.ores.data matches 0 if score #registry.loop chunk_scan.ores.data matches 0 run data modify storage chunk_scan.ores:registry custom prepend value {dimension:"", ores:[]}
execute if score #registry.temp chunk_scan.ores.data matches 0 if score #registry.loop chunk_scan.ores.data matches 0 run data modify storage chunk_scan.ores:registry custom[0].dimension set from storage chunk_scan.ores:registry temp.dimension
execute if score #registry.temp chunk_scan.ores.data matches 0 run data modify storage chunk_scan.ores:registry custom[0].ores append from storage chunk_scan.ores:registry temp
execute if score #registry.temp chunk_scan.ores.data matches 0 run data remove storage chunk_scan.ores:registry var

#cleanup
data remove storage chunk_scan.ores:registry temp
