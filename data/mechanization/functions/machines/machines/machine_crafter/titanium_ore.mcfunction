scoreboard players set temp_0 mech_data 0
execute store success score temp_0 mech_data run data get block ~ ~ ~ Items[0].tag.OreDict
execute if score temp_0 mech_data matches 1.. store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].Count
execute if score temp_0 mech_data matches 1.. run scoreboard players remove temp_1 mech_data 1
execute if score temp_0 mech_data matches 1.. store result block ~ ~ ~ Items[0].Count int 1 run scoreboard players get temp_1 mech_data
execute if score temp_0 mech_data matches 0 store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].tag.Damage
execute if score temp_0 mech_data matches 0 run scoreboard players add temp_1 mech_data 1
execute if score temp_0 mech_data matches 0 store result block ~ ~ ~ Items[0].tag.Damage int 1 run scoreboard players get temp_1 mech_data
execute if score temp_0 mech_data matches 0 if score temp_1 mech_data matches 65.. store success block ~ ~ ~ Items[0].Count int 0 if entity @s

scoreboard players set temp_0 mech_data -1
execute if score temp_1 mech_data matches ..0 store success score temp_0 mech_data run data get block ~ ~ ~ Items[0].tag.OreDict
execute if score temp_0 mech_data matches 1.. store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].Count
execute if score temp_0 mech_data matches 1.. run scoreboard players remove temp_1 mech_data 1
execute if score temp_0 mech_data matches 1.. store result block ~ ~ ~ Items[0].Count int 1 run scoreboard players get temp_1 mech_data
execute if score temp_0 mech_data matches 0 store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].tag.Damage
execute if score temp_0 mech_data matches 0 run scoreboard players add temp_1 mech_data 1
execute if score temp_0 mech_data matches 0 store result block ~ ~ ~ Items[0].tag.Damage int 1 run scoreboard players get temp_1 mech_data
execute if score temp_0 mech_data matches 0 if score temp_1 mech_data matches 65.. store success block ~ ~ ~ Items[0].Count int 0 if entity @s

scoreboard players set temp_0 mech_data 0
execute store success score temp_0 mech_data run data get block ~ ~ ~ Items[1].tag.OreDict
execute if score temp_0 mech_data matches 1.. store result score temp_1 mech_data run data get block ~ ~ ~ Items[1].Count
execute if score temp_0 mech_data matches 1.. run scoreboard players remove temp_1 mech_data 1
execute if score temp_0 mech_data matches 1.. store result block ~ ~ ~ Items[1].Count int 1 run scoreboard players get temp_1 mech_data
execute if score temp_0 mech_data matches 0 store result score temp_1 mech_data run data get block ~ ~ ~ Items[1].tag.Damage
execute if score temp_0 mech_data matches 0 run scoreboard players add temp_1 mech_data 1
execute if score temp_0 mech_data matches 0 store result block ~ ~ ~ Items[1].tag.Damage int 1 run scoreboard players get temp_1 mech_data
execute if score temp_0 mech_data matches 0 if score temp_1 mech_data matches 65.. store success block ~ ~ ~ Items[1].Count int 0 if entity @s

execute positioned ~ ~1 ~ run function give:mech_machines/titanium_ingot