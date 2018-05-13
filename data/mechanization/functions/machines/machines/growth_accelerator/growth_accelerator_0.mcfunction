scoreboard players set temp_0 mech_data 0

execute if block ~ ~2 ~ wheat run function mechanization:machines/machines/growth_accelerator/wheat
execute if block ~ ~2 ~ potatoes run function mechanization:machines/machines/growth_accelerator/potatoes
execute if block ~ ~2 ~ carrots run function mechanization:machines/machines/growth_accelerator/carrots
execute if block ~ ~2 ~ pumpkin_stem run function mechanization:machines/machines/growth_accelerator/pumpkin_stem
execute if block ~ ~2 ~ melon_stem run function mechanization:machines/machines/growth_accelerator/melon_stem

execute if block ~ ~2 ~ sugar_cane if block ~ ~3 ~ air run setblock ~ ~3 ~ sugar_cane
execute if block ~ ~2 ~ cactus if block ~ ~3 ~ air run setblock ~ ~3 ~ cactus

execute if score temp_0 mech_data matches 1 run scoreboard players remove @s mech_power 80

execute if score temp_0 mech_data matches 1 if entity @s[tag=mech_upgraded] run function mechanization:machines/machines/growth_accelerator/growth_accelerator_1


execute unless block ~ ~ ~ minecraft:barrier run kill @s
