scoreboard players remove in_0 mech_data 1

execute at @s run tp @s ^ ^ ^0.5 ~ ~0.1
execute at @s run particle minecraft:dust 1.0 0.0 1.0 1 ~ ~ ~ 0 0 0 0 2 force

execute at @s if score in_0 mech_data matches 1.. if block ~ ~ ~ #mechanization:raytrace_bullets positioned ~ ~-1 ~ unless entity @e[type=!armor_stand,type=!villager,distance=..1,nbt={DeathTime:0s}] at @s run function mechanization:gadgets/guns/bullet/raycast_2
