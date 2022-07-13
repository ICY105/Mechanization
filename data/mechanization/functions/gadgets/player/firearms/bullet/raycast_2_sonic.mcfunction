
execute at @s run tp @s ^ ^ ^0.5
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force

scoreboard players operation #damage mechanization.data = @s mechanization.weaponheat
execute positioned ~ ~-1 ~ as @e[type=#mechanization:living,tag=!smithed.ignore,distance=..1,tag=!smithed.strict,tag=!mechanization.sonic.damaged,nbt={DeathTime:0s}] run function mechanization:gadgets/player/firearms/bullet/damage_sonic
execute at @s[tag=mechanization.bouncy] unless block ~ ~ ~ #mechanization:raytrace_bullets run function mechanization:gadgets/player/firearms/bullet/bounce

scoreboard players remove #loop mechanization.data 1
scoreboard players remove @s mechanization.data 1
execute at @s if score #loop mechanization.data matches 1.. if score @s mechanization.data matches 1.. if block ~ ~ ~ #mechanization:raytrace_bullets run function mechanization:gadgets/player/firearms/bullet/raycast_2_sonic
