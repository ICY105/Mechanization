execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:end_stone"}]} run scoreboard players add @s mech_data 4
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:purpur_block"}]} run scoreboard players add @s mech_data 8
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ender_pearl"}]} run scoreboard players add @s mech_data 30
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ender_eye"}]} run scoreboard players add @s mech_data 80
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dragon_breath"}]} run scoreboard players add @s mech_data 80
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:end_crystal"}]} run scoreboard players add @s mech_data 250

execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:shulker_shell"}]} run scoreboard players add @s mech_data 500
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dragon_head"}]} run scoreboard players add @s mech_data 2000
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:elytra"}]} run scoreboard players add @s mech_data 8000

scoreboard players operation @s mech_data *= $machines.cf.dim_gen.fuel mech_data
scoreboard players operation @s mech_data /= $cons.100 du_data

item modify block ~ ~ ~ container.0 mechanization:decrement_count
