scoreboard players add @s du_data 1
execute store result block ~ ~ ~ CookTime short 1 run scoreboard players get @s du_data

execute if block ~ ~ ~ furnace{BurnTime:0s,Items:[{Slot:1b}]} run function du:custom_furnace/fuel
execute if block ~ ~ ~ furnace{BurnTime:0s} run tag @s remove du_fur_active

execute unless block ~ ~ ~ furnace{Items:[{Slot:0b}]} run tag @s remove du_fur_active

execute store result score temp_0 du_data run data get block ~ ~ ~ CookTimeTotal
scoreboard players remove temp_0 du_data 1
execute if score @s du_data >= temp_0 du_data run function du:custom_furnace/end

execute if score timer_10 du_data matches 0 if block ~ ~ ~ furnace[facing=west,lit=false] run particle minecraft:flame ~-0.53 ~-0.4 ~ 0 0.1 0.18 0 1
execute if score timer_10 du_data matches 0 if block ~ ~ ~ furnace[facing=east,lit=false] run particle minecraft:flame ~0.53 ~-0.4 ~ 0 0.1 0.18 0 1
execute if score timer_10 du_data matches 0 if block ~ ~ ~ furnace[facing=north,lit=false] run particle minecraft:flame ~ ~-0.4 ~-0.53 0.18 0.1 0 0 1
execute if score timer_10 du_data matches 0 if block ~ ~ ~ furnace[facing=south,lit=false] run particle minecraft:flame ~ ~-0.4 ~0.53 0.18 0.1 0 0 1
