scoreboard players set @s mech_firerate 40

summon area_effect_cloud ~ ~ ~ {Tags:["mech_ray_start"],Duration:0}
scoreboard players set in_0 mech_data 60
execute positioned ~ ~1.61 ~ run tp @e[tag=mech_ray_start] ^ ^ ^2 ~ ~
execute as @e[tag=mech_ray_start] at @s run function mechanization:gadgets/raytrace/manage_ray_eco

#execute at @e[tag=mech_ray_start] if block ~ ~ ~ cave_air run title @s actionbar ["",{"text":"Cave Located","color":"gray"}]

execute at @e[tag=mech_ray_start] if block ~ ~ ~ cave_air run playsound mechanization:gadgets.eco_cave player @s ~ ~ ~ 4 1
execute at @e[tag=mech_ray_start] unless block ~ ~ ~ cave_air run playsound mechanization:gadgets.eco_rock player @s ~ ~ ~ 4 1

kill @e[tag=mech_ray_start]