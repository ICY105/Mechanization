execute store success entity @s ArmorItems[3].tag.CustomModelData int 6422906 if entity @s
particle minecraft:smoke ~ ~1.2 ~ 0.1 0 0.1 0 15

execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].Count
scoreboard players remove temp_1 mech_data 1
execute store result block ~ ~ ~ Items[0].Count int 1 run scoreboard players get temp_1 mech_data

execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[1].Count
scoreboard players remove temp_1 mech_data 1
execute store result block ~ ~ ~ Items[1].Count int 1 run scoreboard players get temp_1 mech_data

execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[2].Count
scoreboard players remove temp_1 mech_data 1
execute store result block ~ ~ ~ Items[2].Count int 1 run scoreboard players get temp_1 mech_data

execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[3].Count
scoreboard players remove temp_1 mech_data 1
execute store result block ~ ~ ~ Items[3].Count int 1 run scoreboard players get temp_1 mech_data

execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[4].Count
scoreboard players remove temp_1 mech_data 1
execute store result block ~ ~ ~ Items[4].Count int 1 run scoreboard players get temp_1 mech_data

execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[5].Count
scoreboard players remove temp_1 mech_data 1
execute store result block ~ ~ ~ Items[5].Count int 1 run scoreboard players get temp_1 mech_data

execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[6].Count
scoreboard players remove temp_1 mech_data 1
execute store result block ~ ~ ~ Items[6].Count int 1 run scoreboard players get temp_1 mech_data

execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[7].Count
scoreboard players remove temp_1 mech_data 1
execute store result block ~ ~ ~ Items[7].Count int 1 run scoreboard players get temp_1 mech_data

execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[8].Count
scoreboard players remove temp_1 mech_data 1
execute store result block ~ ~ ~ Items[8].Count int 1 run scoreboard players get temp_1 mech_data