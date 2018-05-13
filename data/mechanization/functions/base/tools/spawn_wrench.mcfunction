execute if entity @s[tag=!du_sneaking] run summon area_effect_cloud ~ ~ ~ {Tags:["mech_ray","mech_ray_start","mech_wrench_function"],Duration:0}
execute if entity @s[tag=du_sneaking] run summon area_effect_cloud ~ ~ ~ {Tags:["mech_ray","mech_ray_start","mech_wrench_break"],Duration:0}
scoreboard players set in_0 mech_data 100
tp @e[tag=mech_ray_start] ~ ~1.61 ~ ~ ~
execute as @e[tag=mech_ray_start] at @s run function mechanization:base/raytrace/manage_ray_invis

execute if entity @s[tag=du_sneaking] at @e[tag=mech_ray_start] unless block ~ ~ ~ air run playsound mechanization:base.wrench_break player @s ~ ~ ~ 1.0

execute if entity @s[tag=!du_sneaking] as @e[tag=mech_ray_start] at @s run function #mechanization:wrench_function
execute if entity @s[tag=du_sneaking] as @e[tag=mech_ray_start] at @s run function mechanization:base/tools/wrench_break

tag @e[tag=mech_ray_start] remove mech_ray_start