scoreboard players set temp_2 mech_data -1
scoreboard players set in_1 mech_data 1

scoreboard players set temp_3 mech_data 0
scoreboard players set in_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[{Slot:0b}]} run scoreboard players set temp_3 mech_data 1
execute if score temp_3 mech_data matches 1 run scoreboard players add temp_2 mech_data 1
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/compressor/get_item_count
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/decompresser/recipes_0

scoreboard players set temp_3 mech_data 0
scoreboard players set in_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[{Slot:1b}]} run scoreboard players set temp_3 mech_data 1
execute if score temp_3 mech_data matches 1 run scoreboard players add temp_2 mech_data 1
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/compressor/get_item_count
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/decompresser/recipes_1

scoreboard players set temp_3 mech_data 0
scoreboard players set in_0 mech_data 2
execute if block ~ ~ ~ dropper{Items:[{Slot:2b}]} run scoreboard players set temp_3 mech_data 1
execute if score temp_3 mech_data matches 1 run scoreboard players add temp_2 mech_data 1
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/compressor/get_item_count
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/decompresser/recipes_2

scoreboard players set temp_3 mech_data 0
scoreboard players set in_0 mech_data 3
execute if block ~ ~ ~ dropper{Items:[{Slot:3b}]} run scoreboard players set temp_3 mech_data 1
execute if score temp_3 mech_data matches 1 run scoreboard players add temp_2 mech_data 1
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/compressor/get_item_count
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/decompresser/recipes_3

scoreboard players set temp_3 mech_data 0
scoreboard players set in_0 mech_data 4
execute if block ~ ~ ~ dropper{Items:[{Slot:4b}]} run scoreboard players set temp_3 mech_data 1
execute if score temp_3 mech_data matches 1 run scoreboard players add temp_2 mech_data 1
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/compressor/get_item_count
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/decompresser/recipes_4

scoreboard players set temp_3 mech_data 0
scoreboard players set in_0 mech_data 5
execute if block ~ ~ ~ dropper{Items:[{Slot:5b}]} run scoreboard players set temp_3 mech_data 1
execute if score temp_3 mech_data matches 1 run scoreboard players add temp_2 mech_data 1
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/compressor/get_item_count
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/decompresser/recipes_5

scoreboard players set temp_3 mech_data 0
scoreboard players set in_0 mech_data 6
execute if block ~ ~ ~ dropper{Items:[{Slot:6b}]} run scoreboard players set temp_3 mech_data 1
execute if score temp_3 mech_data matches 1 run scoreboard players add temp_2 mech_data 1
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/compressor/get_item_count
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/decompresser/recipes_6

scoreboard players set temp_3 mech_data 0
scoreboard players set in_0 mech_data 7
execute if block ~ ~ ~ dropper{Items:[{Slot:7b}]} run scoreboard players set temp_3 mech_data 1
execute if score temp_3 mech_data matches 1 run scoreboard players add temp_2 mech_data 1
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/compressor/get_item_count
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/decompresser/recipes_7

scoreboard players set temp_3 mech_data 0
scoreboard players set in_0 mech_data 8
execute if block ~ ~ ~ dropper{Items:[{Slot:8b}]} run scoreboard players set temp_3 mech_data 1
execute if score temp_3 mech_data matches 1 run scoreboard players add temp_2 mech_data 1
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/compressor/get_item_count
execute if score temp_3 mech_data matches 1 run function mechanization:assembly/machines/decompresser/recipes_8



execute if entity @s[nbt={Rotation:[0.01f,0.0f]}] run tp @e[type=item,tag=mech_comp_new] ~ ~ ~1
execute if entity @s[nbt={Rotation:[90f,0.0f]}] run tp @e[type=item,tag=mech_comp_new] ~-1 ~ ~
execute if entity @s[nbt={Rotation:[180f,0.0f]}] run tp @e[type=item,tag=mech_comp_new] ~ ~ ~-1
execute if entity @s[nbt={Rotation:[270f,0.0f]}] run tp @e[type=item,tag=mech_comp_new] ~1 ~ ~

execute store result score temp_0 mech_data if entity @e[type=item,tag=mech_comp_new]
scoreboard players set temp_1 mech_data 16
scoreboard players operation temp_0 mech_data *= temp_1 mech_data
scoreboard players operation @s mech_power -= temp_0 mech_data
tag @e[type=item,tag=mech_comp_new] remove mech_comp_new
