teleport @s ^ ^ ^0.25

scoreboard players remove in_0 mech_data 1
execute at @s if score in_0 mech_data matches 0.. unless block ~ ~ ~ cave_air run function mechanization:gadgets/raytrace/move_ray_eco