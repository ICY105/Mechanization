summon area_effect_cloud ~ ~ ~ {Tags:["mech_ray_start","mech_placeobject"],Duration:0}
tp @e[tag=mech_ray_start] ~ ~1.61 ~ ~ ~
scoreboard players set in_0 mech_data 100
execute as @e[tag=mech_ray_start] at @s run function mechanization:base/raytrace/move_ray_invis

execute at @e[tag=mech_ray_start] unless block ~ ~ ~ air unless entity @a[distance=..1.0] run function mechanization:base/placement/trace_spot_1
execute at @e[tag=mech_ray_start] unless block ~ ~ ~ air run playsound minecraft:block.stone.place block @s ~ ~ ~ 1 1
