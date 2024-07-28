
# model rotation
scoreboard players add @s mechanization.time 1
execute if score @s mechanization.time matches 16.. run scoreboard players set @s mechanization.time 0
execute if score @s mechanization.time matches 0 run data merge entity @s {start_interpolation:0, interpolation_duration:3, transformation:{right_rotation:[0.0f, 0.707106f, 0.707106f, 0.0f]}}
execute if score @s mechanization.time matches 4 run data merge entity @s {start_interpolation:0, interpolation_duration:3, transformation:{right_rotation:[0.0f, 0.0f, -0.707106f, 0.707106f]}}
execute if score @s mechanization.time matches 8 run data merge entity @s {start_interpolation:0, interpolation_duration:3, transformation:{right_rotation:[0.0f, -0.707106f, 0.707106f, 0.0f]}}
execute if score @s mechanization.time matches 12 run data merge entity @s {start_interpolation:0, interpolation_duration:3, transformation:{right_rotation:[0.0f, 0.0f, 0.707106f, 0.707106f]}}

# damage
scoreboard players operation #predicate mechanization.data = @s player_action.uuid.0
scoreboard players operation #damage mechanization.data = @s mechanization.weaponheat
scoreboard players set #success mechanization.data 0
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#mechanization:living,predicate=!mechanization:is_player,dx=0,dy=0,dz=0] run function mechanization:gadgets/player/energy_saber/damage_entity

execute if score #success mechanization.data matches 1 run function mechanization:gadgets/player/energy_saber/saber_projectile_durability

# move
function mechanization:gadgets/player/energy_saber/saber_projectile_2
execute if entity @s[tag=mechanization.speed] at @s run function mechanization:gadgets/player/energy_saber/saber_projectile_2
