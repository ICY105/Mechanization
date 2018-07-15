scoreboard players set in_0 mech_data 100
function mechanization:base/raytrace/manage_ray_invis

scoreboard players set temp_0 mech_data 0
execute at @s if block ~ ~ ~ spawner{SpawnData:{id:"minecraft:zombie"}} run scoreboard players set temp_0 mech_data 1
execute at @s if block ~ ~ ~ spawner{SpawnData:{id:"minecraft:skeleton"}} run scoreboard players set temp_0 mech_data 2
execute at @s if block ~ ~ ~ spawner{SpawnData:{id:"minecraft:spider"}} run scoreboard players set temp_0 mech_data 3
execute at @s if block ~ ~ ~ spawner{SpawnData:{id:"minecraft:cave_spider"}} run scoreboard players set temp_0 mech_data 4
execute at @s if block ~ ~ ~ spawner{SpawnData:{id:"minecraft:blaze"}} run scoreboard players set temp_0 mech_data 5
execute at @s if block ~ ~ ~ spawner{SpawnData:{id:"minecraft:silverfish"}} run scoreboard players set temp_0 mech_data 6

execute if score temp_0 mech_data matches 1.. at @s run setblock ~ ~ ~ air replace

kill @s
