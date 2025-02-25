
# model rotation
scoreboard players add @s mechanization.time 1
execute if score @s mechanization.time matches 8.. run scoreboard players set @s mechanization.time 0
execute if score @s mechanization.time matches 0 run data merge entity @s {start_interpolation:0, interpolation_duration:2, transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 0.7f], right_rotation:[0.7f, 0.0f, 0.0f, 0.7f]}}
execute if score @s mechanization.time matches 2 run data merge entity @s {start_interpolation:0, interpolation_duration:2, transformation:{left_rotation:[0.0f, 0.7f, 0.0f, 0.7f], right_rotation:[0.7f, 0.0f, 0.0f, 0.7f]}}
execute if score @s mechanization.time matches 4 run data merge entity @s {start_interpolation:0, interpolation_duration:2, transformation:{left_rotation:[0.0f, 1.0f, 0.0f, 0.0f], right_rotation:[0.7f, 0.0f, 0.0f, 0.7f]}}
execute if score @s mechanization.time matches 6 run data merge entity @s {start_interpolation:0, interpolation_duration:2, transformation:{left_rotation:[0.0f, -0.7f, 0.0f, 0.7f], right_rotation:[0.7f, 0.0f, 0.0f, 0.7f]}}

# damage
scoreboard players operation #predicate mechanization.data = @s player_action.uuid.0
scoreboard players set #success mechanization.data 0
data modify storage mechanization:temp obj set value {damage: 0}
execute store result storage mechanization:temp obj.damage double 0.1 run scoreboard players get @s mechanization.weaponheat
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#mechanization:living,predicate=!mechanization:is_player,dx=0,dy=0,dz=0] run function mechanization:gadgets/player/energy_saber/damage_entity with storage mechanization:temp obj

execute if score #success mechanization.data matches 1 run function mechanization:gadgets/player/energy_saber/saber_projectile_durability

# move
function mechanization:gadgets/player/energy_saber/saber_projectile_2
