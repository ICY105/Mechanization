
execute store result score #value mechanization.data run data get block ~ ~ ~ RecipesUsed."minecraft:iron_ingot_from_smelting_raw_iron"
scoreboard players add #value mechanization.data 1
execute if score #value mechanization.data matches 1 run data modify block ~ ~ ~ RecipesUsed."minecraft:iron_ingot_from_smelting_raw_iron" set value 1
execute if score #value mechanization.data matches 2.. store result block ~ ~ ~ RecipesUsed."minecraft:iron_ingot_from_smelting_raw_iron" int 1 run scoreboard players get #value mechanization.data
