
scoreboard players set @s du_placehead 0

summon area_effect_cloud ~ ~ ~ {Tags:["du_head_ray"],Duration:0}
tp @e[tag=du_head_ray] ~ ~1.61 ~ ~ ~
execute as @e[tag=du_head_ray] at @s run function du:raytrace/start_ray_head
