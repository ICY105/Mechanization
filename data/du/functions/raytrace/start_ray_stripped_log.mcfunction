
scoreboard players set in_0 du_data 120
summon area_effect_cloud ~ ~ ~ {Tags:["du_nerf_ray"],Duration:0}
tp @e[tag=du_nerf_ray] ~ ~1.61 ~ ~ ~
execute as @e[tag=du_nerf_ray] at @s run function du:raytrace/move_ray_stripped_log
kill @e[tag=du_nerf_ray]
