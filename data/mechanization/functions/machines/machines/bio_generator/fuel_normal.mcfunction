scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:cactus"}]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:melon"}]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:sugar_cane"}]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:cocoa_beans"}]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:beetroot"}]} run scoreboard players add temp_0 mech_data 1

execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:pumpkin"}]} run scoreboard players add temp_0 mech_data 2
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:wheat"}]} run scoreboard players add temp_0 mech_data 2
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:carrot"}]} run scoreboard players add temp_0 mech_data 2
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:potato"}]} run scoreboard players add temp_0 mech_data 2

execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:melon_block"}]} run scoreboard players add temp_0 mech_data 3
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:chorus_fruit"}]} run scoreboard players add temp_0 mech_data 3
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:nether_wart"}]} run scoreboard players add temp_0 mech_data 3

execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:brown_mushroom"}]} run scoreboard players add temp_0 mech_data 4
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:red_mushroom"}]} run scoreboard players add temp_0 mech_data 4

execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:chorus_flower"}]} run scoreboard players add temp_0 mech_data 5

scoreboard players operation @s mech_power += temp_0 mech_data
execute if score temp_0 mech_data matches 1.. store success entity @s ArmorItems[3].tag.Damage short 66 if entity @s
execute if score temp_0 mech_data matches 1.. run particle minecraft:smoke ~ ~1.2 ~ 0.1 0 0.1 0 15

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].Count
scoreboard players remove temp_0 mech_data 1
execute store result block ~ ~ ~ Items[0].Count int 1 run scoreboard players get temp_0 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[1].Count
scoreboard players remove temp_0 mech_data 1
execute store result block ~ ~ ~ Items[1].Count int 1 run scoreboard players get temp_0 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[2].Count
scoreboard players remove temp_0 mech_data 1
execute store result block ~ ~ ~ Items[2].Count int 1 run scoreboard players get temp_0 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[3].Count
scoreboard players remove temp_0 mech_data 1
execute store result block ~ ~ ~ Items[3].Count int 1 run scoreboard players get temp_0 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[4].Count
scoreboard players remove temp_0 mech_data 1
execute store result block ~ ~ ~ Items[4].Count int 1 run scoreboard players get temp_0 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[5].Count
scoreboard players remove temp_0 mech_data 1
execute store result block ~ ~ ~ Items[5].Count int 1 run scoreboard players get temp_0 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[6].Count
scoreboard players remove temp_0 mech_data 1
execute store result block ~ ~ ~ Items[6].Count int 1 run scoreboard players get temp_0 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[7].Count
scoreboard players remove temp_0 mech_data 1
execute store result block ~ ~ ~ Items[7].Count int 1 run scoreboard players get temp_0 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[8].Count
scoreboard players remove temp_0 mech_data 1
execute store result block ~ ~ ~ Items[8].Count int 1 run scoreboard players get temp_0 mech_data