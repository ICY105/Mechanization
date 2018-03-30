tp @s ^ ^ ^0.05
scoreboard players remove in_0 du_data 1
execute at @s if block ~ ~ ~ minecraft:grass_path run setblock ~ ~ ~ grass_block
execute at @s if score in_0 du_data matches 0.. run function du:raytrace/move_ray_path