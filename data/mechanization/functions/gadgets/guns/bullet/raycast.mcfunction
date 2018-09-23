scoreboard players operation in_0 mech_data = @s mech_data
function mechanization:gadgets/guns/bullet/raycast_2

scoreboard players set temp_0 mech_data 0
scoreboard players operation in_0 mech_data = @s mech_weaponheat
execute positioned ~ ~-1 ~ as @e[type=!armor_stand,type=!villager,distance=..1,nbt={DeathTime:0s}] store success score temp_0 mech_data run function mechanization:gadgets/guns/bullet/end_entity 
execute if score temp_0 mech_data matches 1 run kill @s

execute at @s[tag=!mech_bouncy] unless block ~ ~ ~ #mechanization:raytrace_bullets run function mechanization:gadgets/guns/bullet/end
execute at @s[tag=mech_bouncy] unless block ~ ~ ~ #mechanization:raytrace_bullets run function mechanization:gadgets/guns/bullet/bounce

