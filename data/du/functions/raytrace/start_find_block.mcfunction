
summon area_effect_cloud ~ ~ ~ {Tags:["du_found_block","du_ray_start"]}
tp @e[tag=du_ray_start] ~ ~ ~ ~ ~
execute as @e[tag=du_ray_start] at @s run function du:raytrace/move_find_block
tag @e[tag=du_ray_start] remove du_ray_start
