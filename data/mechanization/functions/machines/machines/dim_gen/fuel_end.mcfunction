execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:end_stone"}]} run scoreboard players add @s mech_data 4
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:purpur_block"}]} run scoreboard players add @s mech_data 8
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ender_pearl"}]} run scoreboard players add @s mech_data 40
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ender_eye"}]} run scoreboard players add @s mech_data 60
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dragon_breath"}]} run scoreboard players add @s mech_data 80
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:end_crystal"}]} run scoreboard players add @s mech_data 250

execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:shulker_shell"}]} run scoreboard players add @s mech_data 500
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dragon_head"}]} run scoreboard players add @s mech_data 2000
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:elytra"}]} run scoreboard players add @s mech_data 8000

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].Count
scoreboard players remove temp_0 mech_data 1
execute if score @s mech_data matches 1.. store result block ~ ~ ~ Items[0].Count int 1 run scoreboard players get temp_0 mech_data
