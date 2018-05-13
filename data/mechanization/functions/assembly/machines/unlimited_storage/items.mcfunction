execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].Count
execute store result score temp_1 mech_data run data get entity @s ArmorItems[3].tag.mech_storage

scoreboard players remove temp_0 mech_data 32
scoreboard players operation temp_1 mech_data += temp_0 mech_data
execute if score temp_1 mech_data matches ..-1 run scoreboard players set temp_1 mech_data 0

scoreboard players add temp_0 mech_data 32
execute if score temp_1 mech_data matches 1.. run scoreboard players set temp_0 mech_data 32

execute store result block ~ ~ ~ Items[0].Count int 1 run scoreboard players get temp_0 mech_data
execute store result entity @s ArmorItems[3].tag.mech_storage int 1 run scoreboard players get temp_1 mech_data
