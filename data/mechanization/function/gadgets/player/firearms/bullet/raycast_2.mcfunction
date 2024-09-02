
execute at @s run tp @s ^ ^ ^0.5 ~ ~0.1
particle minecraft:dust 1.0 0.0 1.0 1 ~ ~ ~ 0 0 0 0 2 force

scoreboard players remove #loop mechanization.data 1
scoreboard players remove @s mechanization.data 1
execute at @s if score #loop mechanization.data matches 1.. if score @s mechanization.data matches 1.. if block ~ ~ ~ #mechanization:raytrace_bullets positioned ~ ~-1 ~ unless entity @e[type=#mechanization:living,tag=!smithed.ignore,distance=..1,tag=!smithed.strict,nbt={DeathTime:0s}] at @s run function mechanization:gadgets/player/firearms/bullet/raycast_2
