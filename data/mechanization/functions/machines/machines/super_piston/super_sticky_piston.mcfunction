data merge entity @s {Fire:32676}

scoreboard players set temp_1 mech_data 0
execute if block ~ ~ ~ dropper[triggered=true] run scoreboard players set temp_1 mech_data 1

execute if entity @s[nbt={Rotation:[-90f,0f]}] run data merge entity @s {Rotation:[270f,0f]}
execute if entity @s[nbt={Rotation:[-180f,0f]}] run data merge entity @s {Rotation:[180f,0f]}
execute if entity @s[nbt={Rotation:[-270f,0f]}] run data merge entity @s {Rotation:[90f,0f]}
execute if entity @s[nbt={Rotation:[-359.99f,0f]}] run data merge entity @s {Rotation:[0.01f,0f]}

execute if score temp_1 mech_data matches 1 if entity @s[nbt={Rotation:[0.01f,0f]},tag=!mech_active] run function mechanization:machines/machines/super_piston/super_piston_north
execute if score temp_1 mech_data matches 1 if entity @s[nbt={Rotation:[90f,0f]},tag=!mech_active] run function mechanization:machines/machines/super_piston/super_piston_east
execute if score temp_1 mech_data matches 1 if entity @s[nbt={Rotation:[180f,0f]},tag=!mech_active] run function mechanization:machines/machines/super_piston/super_piston_south
execute if score temp_1 mech_data matches 1 if entity @s[nbt={Rotation:[270f,0f]},tag=!mech_active] run function mechanization:machines/machines/super_piston/super_piston_west

execute if score temp_1 mech_data matches 0 if entity @s[nbt={Rotation:[0.01f,0f]},tag=mech_active] if block ~ ~ ~-1 air run function mechanization:machines/machines/super_piston/super_sticky_piston_north
execute if score temp_1 mech_data matches 0 if entity @s[nbt={Rotation:[90f,0f]},tag=mech_active] if block ~1 ~ ~ air run function mechanization:machines/machines/super_piston/super_sticky_piston_east
execute if score temp_1 mech_data matches 0 if entity @s[nbt={Rotation:[180f,0f]},tag=mech_active] if block ~ ~ ~1 air run function mechanization:machines/machines/super_piston/super_sticky_piston_south
execute if score temp_1 mech_data matches 0 if entity @s[nbt={Rotation:[270f,0f]},tag=mech_active] if block ~-1 ~ ~ air run function mechanization:machines/machines/super_piston/super_sticky_piston_west

execute if score temp_1 mech_data matches 0 run tag @s remove mech_active
execute if score temp_1 mech_data matches 1 run tag @s add mech_active

execute unless block ~ ~ ~ dropper run kill @s
