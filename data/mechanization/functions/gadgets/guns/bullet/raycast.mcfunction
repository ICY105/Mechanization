
scoreboard players operation in_0 mech_data = @s mech_data

function mechanization:gadgets/guns/bullet/raycast_2

execute positioned ~ ~-1 ~ if entity @e[type=!armor_stand,type=!villager,distance=..1,nbt={DeathTime:0s}] run kill @s
scoreboard players set temp_0 mech_data 0
execute positioned ~ ~-1 ~ store success score temp_0 mech_data as @e[type=!armor_stand,type=!villager,distance=..1,nbt={DeathTime:0s},sort=nearest,limit=1] at @s anchored eyes positioned ^ ^ ^ run summon arrow ~ ~1 ~ {Tags:["mech_bullet_arrow","mech_new_bullet_arrow",],Motion:[0.0,-0.5,0.0],pickup:2,damage:1,Color:-1}

execute if score temp_0 mech_data matches 1 store result entity @e[type=arrow,tag=mech_new_bullet_arrow,limit=1] damage double 1 run scoreboard players get @s mech_weaponheat
execute if score temp_0 mech_data matches 1 run tag @e[type=arrow,tag=mech_new_bullet_arrow] remove mech_new_bullet_arrow

execute at @s if entity @s[tag=!mech_bouncy] unless block ~ ~ ~ #mechanization:raytrace_bullets run function mechanization:gadgets/guns/bullet/end
execute at @s if entity @s[tag=mech_bouncy] unless block ~ ~ ~ #mechanization:raytrace_bullets run function mechanization:gadgets/guns/bullet/bounce

