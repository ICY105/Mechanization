
# #registry.min_y chunk_scan.ores.data [0,255]: minimum y value to generate at
# #registry.max_y chunk_scan.ores.data [0,255]: maximum y value to generate at
# #registry.min_veins chunk_scan.ores.data [0,32]: minimum number of veins to generate
# #registry.max_veins : maximum number of veins to generate
# #registry.min_vein_size chunk_scan.ores.data [0,16]: minimum number of ores per vein
# #registry.max_vein_size chunk_scan.ores.data [0,16]: maximum number of ores per vein
# #registry.ignore_restrictions chunk_scan.ores.data [0,1]: ignore placement restrictions
#
# Optional: add this line to adjust dimension and/or biome whitelist/blacklist
# Defaults to overworld and no biome restrictions
# data modify storage chunk_scan.ores:registry input set value {dimension:"minecraft:overworld", biomes:["plains", "desert", ...], biome_blacklist:0b}
#
# #registry.result_id chunk_scan.ores.data: Returns -1 if registering ore failed. Otherwise, returns generated ore reg ID num.
# Keep track of this number in a fake player scoreboard value. The function tag `#du:world_gen/ore` will have `#world.in_0 chunk_scan.ores.data` set to the structure's registry ID.
# If this if matches the same score, generate your ore. (ie. execute if #world.in_0 chunk_scan.ores.data = <my_ore> <my_obj> run function <generate ore>)
#

scoreboard players set #registry.result_id chunk_scan.ores.data 0

#checks Y values
execute unless score #registry.min_y chunk_scan.ores.data matches -2048..2048 run scoreboard players set #registry.ore_id chunk_scan.ores.data -1
execute unless score #registry.max_y chunk_scan.ores.data matches -2048..2048 run scoreboard players set #registry.ore_id chunk_scan.ores.data -1
execute unless score #registry.min_y chunk_scan.ores.data <= #registry.max_y chunk_scan.ores.data run scoreboard players set #registry.ore_id chunk_scan.ores.data -1

#checks veins to generate
execute unless score #registry.min_veins chunk_scan.ores.data matches 0..32 run scoreboard players set #registry.ore_id chunk_scan.ores.data -1
execute unless score #registry.max_veins chunk_scan.ores.data matches 0..32 run scoreboard players set #registry.ore_id chunk_scan.ores.data -1
execute unless score #registry.min_veins chunk_scan.ores.data <= #registry.max_veins chunk_scan.ores.data run scoreboard players set #registry.ore_id chunk_scan.ores.data -1

#checks vein size
execute unless score #registry.min_vein_size chunk_scan.ores.data matches 0..16 run scoreboard players set #registry.ore_id chunk_scan.ores.data -1
execute unless score #registry.max_vein_size chunk_scan.ores.data matches 0..16 run scoreboard players set #registry.ore_id chunk_scan.ores.data -1
execute unless score #registry.min_vein_size chunk_scan.ores.data <= #registry.max_vein_size chunk_scan.ores.data run scoreboard players set #registry.ore_id chunk_scan.ores.data -1

#check placement restriction
execute unless score #registry.ignore_restrictions chunk_scan.ores.data matches 0..1 run scoreboard players set #registry.ore_id chunk_scan.ores.data -1

#run register function
execute if score #registry.result_id chunk_scan.ores.data matches 0 run function chunk_scan.ores:v1.0/registry/register_ore_2

#reset temp
data modify storage chunk_scan.ores:registry input set value {}
