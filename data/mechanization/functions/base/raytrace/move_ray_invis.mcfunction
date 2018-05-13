teleport @s ^ ^ ^0.05

scoreboard players remove in_0 mech_data 1
execute at @s if score in_0 mech_data matches 0.. if block ~ ~ ~ #mechanization:raytrace_tools run function mechanization:base/raytrace/move_ray_invis