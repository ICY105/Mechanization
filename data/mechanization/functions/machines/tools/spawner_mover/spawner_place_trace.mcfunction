scoreboard players set in_0 mech_data 100
function mechanization:base/raytrace/move_ray_invis

execute at @s run teleport ^ ^ ^-0.1
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~

execute if score temp_0 mech_data matches 1 at @s run setblock ~ ~ ~ spawner{SpawnData:{id:"minecraft:zombie"}}
execute if score temp_0 mech_data matches 2 at @s run setblock ~ ~ ~ spawner{SpawnData:{id:"minecraft:skeleton"}}
execute if score temp_0 mech_data matches 3 at @s run setblock ~ ~ ~ spawner{SpawnData:{id:"minecraft:spider"}}
execute if score temp_0 mech_data matches 4 at @s run setblock ~ ~ ~ spawner{SpawnData:{id:"minecraft:cave_spider"}}
execute if score temp_0 mech_data matches 5 at @s run setblock ~ ~ ~ spawner{SpawnData:{id:"minecraft:blaze"}}
execute if score temp_0 mech_data matches 6 at @s run setblock ~ ~ ~ spawner{SpawnData:{id:"minecraft:silverfish"}}

kill @s