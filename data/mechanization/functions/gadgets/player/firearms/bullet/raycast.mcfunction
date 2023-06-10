
scoreboard players operation #loop mechanization.data = @s mechanization.firerate
execute if entity @s[tag=!mechanization.sonic] run function mechanization:gadgets/player/firearms/bullet/raycast_2
execute if entity @s[tag=mechanization.sonic] run function mechanization:gadgets/player/firearms/bullet/raycast_2_sonic

scoreboard players set #success mechanization.data 0
scoreboard players operation #damage mechanization.data = @s mechanization.weaponheat
execute positioned ~ ~-1 ~ as @e[type=#mechanization:living,tag=!smithed.ignore,distance=..1,tag=!smithed.strict,nbt={DeathTime:0s}] store success score #success mechanization.data run function mechanization:gadgets/player/firearms/damage_entity
execute if score #success mechanization.data matches 1 run kill @s

execute at @s[tag=!mechanization.bouncy] unless block ~ ~ ~ #mechanization:raytrace_bullets run function mechanization:gadgets/player/firearms/bullet/end
execute at @s[tag=mechanization.bouncy] unless block ~ ~ ~ #mechanization:raytrace_bullets run function mechanization:gadgets/player/firearms/bullet/bounce

execute if score @s mechanization.data matches ..0 run kill @s
execute if entity @s[tag=mechanization.sonic] run tag @e[tag=mechanization.sonic.damaged] remove mechanization.sonic.damaged
