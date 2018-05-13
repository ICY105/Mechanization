summon area_effect_cloud ~ ~ ~ {Tags:["mech_ray_start"],Duration:0}
tp @e[tag=mech_ray_start] ~ ~1.61 ~ ~ ~

scoreboard players set in_0 mech_data 120
execute as @e[tag=mech_ray_start] at @s run function mechanization:base/raytrace/move_ray_farmland
execute as @e[tag=mech_ray_start] at @s if block ~ ~ ~ minecraft:farmland run setblock ~ ~ ~ dirt

kill @e[tag=mech_ray_start]
