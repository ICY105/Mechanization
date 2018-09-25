tag @s remove du_fur_active
scoreboard players operation @s du_move_y = @s du_move_x
data merge block ~ ~ ~ {CookTime:0s}

execute unless block ~ ~ ~ furnace{Items:[{Slot:1b}]} run replaceitem block ~ ~ ~ container.1 stone

execute store result score temp_0 du_data run data get block ~ ~ ~ Items[2].Count
scoreboard players operation in_0 du_data = @s du_move_x
function #du:furnace_recipes
execute store result score temp_1 du_data run data get block ~ ~ ~ Items[2].Count

scoreboard players operation temp_0 du_data += temp_1 du_data
execute store result block ~ ~ ~ Items[2].Count byte 1 run scoreboard players get temp_0 du_data


execute store result score temp_0 du_data run data get block ~ ~ ~ Items[0].Count
scoreboard players remove temp_0 du_data 1
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get temp_0 du_data

execute if block ~ ~ ~ furnace{Items:[{Slot:1b,id:"minecraft:stone"}]} run replaceitem block ~ ~ ~ container.1 air