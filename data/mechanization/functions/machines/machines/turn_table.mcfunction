data merge entity @s {Fire:32676}

scoreboard players set temp_1 mech_data 0
execute if block ~ ~ ~ dropper[triggered=true] run scoreboard players set temp_1 mech_data 1

execute if score temp_1 mech_data matches 1 if entity @s[tag=!mech_active] positioned ~ ~1 ~ run function mechanization:base/tools/wrench_function
execute if score temp_1 mech_data matches 1 if entity @s[tag=!mech_active] if block ~ ~1 ~ chest[type=single] unless block ~ ~1 ~ chest{Items:[{}]} run setblock ~ ~1 ~ chest[type=left]
execute if score temp_1 mech_data matches 1 run tag @s add mech_active
execute if score temp_1 mech_data matches 0 run tag @s remove mech_active

execute unless block ~ ~ ~ dropper run kill @s