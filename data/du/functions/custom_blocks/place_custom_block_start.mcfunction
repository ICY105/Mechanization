
summon area_effect_cloud ~ ~ ~ {Tags:["du_block_ray"],Duration:0}
tp @e[tag=du_block_ray] ~ ~1.61 ~ ~ ~
execute as @e[tag=du_block_ray] at @s run function du:raytrace/start_ray_block
