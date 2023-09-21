
### config values

data modify storage chunk_scan.ores:temp obj set value {x:0, y:0, z:0}

# random displacements
$execute store result storage chunk_scan.ores:temp obj.x int 1 run random value 0..15 chunk_scan:$(x)_$(z)
$execute store result storage chunk_scan.ores:temp obj.z int 1 run random value 0..15 chunk_scan:$(x)_$(z)
$execute store result storage chunk_scan.ores:temp obj.y int 1 run random value $(min_y)..$(max_y) chunk_scan:$(x)_$(z)

# Vein Size
$execute store result score #gen.vein_size chunk_scan.ores.data run random value $(min_vein_size)..$(max_vein_size) chunk_scan:$(x)_$(z)
$execute if score #gen.vein_size chunk_scan.ores.data matches 0 run scoreboard players set #gen.vein_size chunk_scan.ores.data $(min_vein_size)

# displace
execute if score #gen.vein_size chunk_scan.ores.data matches 1.. run function chunk_scan.ores:v1.3/generation/displace with storage chunk_scan.ores:temp obj

# loop
scoreboard players remove #gen.veins chunk_scan.ores.data 1
execute if score #gen.veins chunk_scan.ores.data matches 1.. run function chunk_scan.ores:v1.3/generation/generate_veins with storage chunk_scan.ores:generation chunk.list[0]
