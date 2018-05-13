execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:end_stone"}]} run scoreboard players add @s mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dragon_breath"}]} run scoreboard players add @s mech_data 16
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:shulker_shell"}]} run scoreboard players add @s mech_data 256
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ender_pearl"}]} run scoreboard players add @s mech_data 4
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ender_eye"}]} run scoreboard players add @s mech_data 8
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:elytra"}]} run scoreboard players add @s mech_data 3125
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dragon_head"}]} run scoreboard players add @s mech_data 512

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].Count
scoreboard players remove temp_0 mech_data 1
execute store result block ~ ~ ~ Items[0].Count int 1 run scoreboard players get temp_0 mech_data
