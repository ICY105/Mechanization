tp @s ^ ^ ^0.05
scoreboard players remove in_0 du_data 1
execute at @s if score in_0 du_data matches 0.. if block ~ ~ ~ #du:place_block_through run function du:raytrace/move_ray_block