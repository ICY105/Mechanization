tp @s ^ ^ ^0.05
scoreboard players remove in_0 du_data 1
execute at @s if block ~ ~ ~ #du:stripped_logs run function du:raytrace/set_stripped_log
execute at @s if score in_0 du_data matches 0.. run function du:raytrace/move_ray_stripped_log