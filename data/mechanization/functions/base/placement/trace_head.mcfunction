summon area_effect_cloud ~ ~ ~ {Tags:["mech_ray","mech_ray_start","mech_placeobject"],Duration:0}
scoreboard players set in_0 mech_data 100
tp @e[tag=mech_ray_start] ~ ~1.61 ~ ~ ~
execute as @e[tag=mech_ray_start] at @s run function mechanization:base/raytrace/manage_ray_invis

execute if entity @s[tag=mech_operator] run tag @e[tag=mech_ray_start] add mech_operator



execute as @e[tag=mech_ray_start] at @s run function mechanization:machines/worldgen/place_ore
execute as @e[tag=mech_ray_start] at @s run function mechanization:nuclear/worldgen/place_ore
execute as @e[tag=mech_ray_start] at @s run function mechanization:assembly/machines/place_block


#cleanup
scoreboard players set @s mech_placehead 0
