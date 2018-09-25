execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:written_book"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:bucket"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:snowball"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:egg"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:ender_pearl"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:armor_stand"}]} run scoreboard players set temp_0 du_data 0

execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:white_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:orange_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:magenta_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:light_blue_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:yellow_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:lime_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:pink_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:gray_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:light_gray_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:cyan_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:purple_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:blue_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:brown_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:green_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:red_banner"}]} run scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ furnace{Items:[{Slot:2b,id:"minecraft:black_banner"}]} run scoreboard players set temp_0 du_data 0

execute if score temp_0 du_data matches 0 run scoreboard players set @s du_move_y -1