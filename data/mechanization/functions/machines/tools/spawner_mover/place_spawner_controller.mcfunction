summon area_effect_cloud ~ ~ ~ {Tags:["mech_ray_start"],Duration:0}
tp @e[tag=mech_ray_start] ~ ~1.61 ~ ~ ~

scoreboard players set in_0 mech_data 100
execute as @e[tag=mech_ray_start] at @s run function mechanization:base/raytrace/manage_ray_invis

scoreboard players set temp_0 mech_data 0
execute as @e[tag=mech_ray_start] at @s if block ~ ~ ~ spawner run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 at @e[tag=mech_ray_start] run summon armor_stand ~ ~ ~ {Tags:["mech_spawner_controller","mech_reciever"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Count:1b,tag:{Unbreakable:1,Damage:77}}]}
execute if score temp_0 mech_data matches 1 at @e[tag=mech_ray_start] run scoreboard players set @e[tag=mech_spawner_controller,distance=..0.25] mech_power 0
execute if score temp_0 mech_data matches 1 run clear @s[gamemode=!creative] minecraft:diamond_shovel{Unbreakable:1,Damage:77} 1
