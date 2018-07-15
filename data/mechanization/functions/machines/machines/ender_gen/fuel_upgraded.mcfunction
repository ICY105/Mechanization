execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:end_stone"}]} run scoreboard players add @s mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:end_stone_bricks"}]} run scoreboard players add @s mech_data 2
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dragon_breath"}]} run scoreboard players add @s mech_data 24
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:shulker_shell"}]} run scoreboard players add @s mech_data 384
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ender_pearl"}]} run scoreboard players add @s mech_data 6
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ender_eye"}]} run scoreboard players add @s mech_data 12
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ender_crystal"}]} run scoreboard players add @s mech_data 18
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:elytra"}]} run scoreboard players add @s mech_data 4688
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dragon_head"}]} run scoreboard players add @s mech_data 768

execute if block ~ ~ ~ furnace{Items:[{Slot:0b, tag:{OreDict:["blockEnderPearl"]} }]} run scoreboard players add @s mech_data 30

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].Count
scoreboard players remove temp_0 mech_data 1
execute if score @s mech_data matches 1.. store result block ~ ~ ~ Items[0].Count int 1 run scoreboard players get temp_0 mech_data
