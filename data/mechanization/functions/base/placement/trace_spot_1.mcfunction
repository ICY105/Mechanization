execute as @e[tag=mech_ray_start] at @s run teleport ^ ^ ^-0.1
execute as @e[tag=mech_ray_start] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
scoreboard players operation @e[tag=mech_ray_start] mech_data = @s mech_usedid
execute if entity @s[tag=mech_operator] run tag @e[tag=mech_ray_start] add mech_operator

execute if entity @s[y_rotation=-180..-135] run tag @e[tag=mech_ray_start] add mech_rot_0
execute if entity @s[y_rotation=135..179.9] run tag @e[tag=mech_ray_start] add mech_rot_0
execute if entity @s[y_rotation=-135..-45] run tag @e[tag=mech_ray_start] add mech_rot_1
execute if entity @s[y_rotation=-45..45] run tag @e[tag=mech_ray_start] add mech_rot_2
execute if entity @s[y_rotation=45..135] run tag @e[tag=mech_ray_start] add mech_rot_3

execute as @e[tag=mech_ray_start] at @s run function #mechanization:place_object

function mechanization:base/utils/get_stored_energy
execute if score out_0 mech_data matches 1.. as @e[tag=mech_ray_start] at @s run scoreboard players operation @e[scores={mech_power=0},distance=..0.5,limit=1,sort=nearest] mech_power = out_0 mech_data



replaceitem entity @s[gamemode=!creative] weapon.mainhand air

tag @s remove mech_ray_start