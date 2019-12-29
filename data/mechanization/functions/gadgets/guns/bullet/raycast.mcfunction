scoreboard players operation in_0 mech_data = @s mech_data
function mechanization:gadgets/guns/bullet/raycast_2

scoreboard players operation $player.in_0 du_data = @s mech_weaponheat
scoreboard players set $player.in_1 du_data -1
execute positioned ~ ~-1 ~ as @e[type=#du:living,type=!villager,distance=..1,nbt={DeathTime:0s}] store success score temp_0 mech_data run function mechanization:gadgets/guns/bullet/end_entity 
execute if score $player.in_1 du_data matches 0 run kill @s

execute at @s[tag=!mech_bouncy] unless block ~ ~ ~ #mechanization:raytrace_bullets run function mechanization:gadgets/guns/bullet/end
execute at @s[tag=mech_bouncy] unless block ~ ~ ~ #mechanization:raytrace_bullets run function mechanization:gadgets/guns/bullet/bounce

