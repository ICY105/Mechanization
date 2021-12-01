
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:blue_ice"}]} run scoreboard players add @s mechanization.data 15
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:prismarine_crystals"}]} run scoreboard players add @s mechanization.data 20
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:rabbit_foot"}]} run scoreboard players add @s mechanization.data 40
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:phantom_membrane"}]} run scoreboard players add @s mechanization.data 80
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:scute"}]} run scoreboard players add @s mechanization.data 160
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:nautilus_shell"}]} run scoreboard players add @s mechanization.data 240

execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:music_disc_13"}]} run scoreboard players add @s mechanization.data 500
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:music_disc_cat"}]} run scoreboard players add @s mechanization.data 500
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:music_disc_blocks"}]} run scoreboard players add @s mechanization.data 500
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:music_disc_chirp"}]} run scoreboard players add @s mechanization.data 500
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:music_disc_far"}]} run scoreboard players add @s mechanization.data 500
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:music_disc_mall"}]} run scoreboard players add @s mechanization.data 500
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:music_disc_mellohi"}]} run scoreboard players add @s mechanization.data 500
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:music_disc_stal"}]} run scoreboard players add @s mechanization.data 500
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:music_disc_strad"}]} run scoreboard players add @s mechanization.data 500
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:music_disc_ward"}]} run scoreboard players add @s mechanization.data 500
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:music_disc_11"}]} run scoreboard players add @s mechanization.data 500
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:music_disc_wait"}]} run scoreboard players add @s mechanization.data 500

execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:heart_of_the_sea"}]} run scoreboard players add @s mechanization.data 1000
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:totem_of_undying"}]} run scoreboard players add @s mechanization.data 1000

scoreboard players operation @s mechanization.data *= $machines.cf.dim_gen.fuel mech_data
scoreboard players operation @s mechanization.data /= $cons.100 du_data

item modify block ~ ~ ~ container.0 mechanization:decrement_count
