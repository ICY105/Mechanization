execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:0b}]} run replaceitem block ~ ~ ~ container.0 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:1b}]} run replaceitem block ~ ~ ~ container.1 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:5b}]} run replaceitem block ~ ~ ~ container.5 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:6b}]} run replaceitem block ~ ~ ~ container.6 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:7b}]} run replaceitem block ~ ~ ~ container.7 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:8b}]} run replaceitem block ~ ~ ~ container.8 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:9b}]} run replaceitem block ~ ~ ~ container.9 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:10b}]} run replaceitem block ~ ~ ~ container.10 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:14b}]} run replaceitem block ~ ~ ~ container.14 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:15b}]} run replaceitem block ~ ~ ~ container.15 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:17b}]} run replaceitem block ~ ~ ~ container.17 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:18b}]} run replaceitem block ~ ~ ~ container.18 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:19b}]} run replaceitem block ~ ~ ~ container.19 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:23b}]} run replaceitem block ~ ~ ~ container.23 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:24b}]} run replaceitem block ~ ~ ~ container.24 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:25b}]} run replaceitem block ~ ~ ~ container.25 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1
execute unless block ~ ~ ~ trapped_chest{Items:[{Slot:26b}]} run replaceitem block ~ ~ ~ container.26 minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:"\"\""}} 1

replaceitem block ~ ~ ~ container.16 air
tag @s remove du_has_recipe

function du:custom_crafter/inv/get_crafting_count

scoreboard players set out_0 du_data 1
scoreboard players set out_1 du_data 1
scoreboard players set out_2 du_data 1
scoreboard players set out_3 du_data 1
scoreboard players set out_4 du_data 1
scoreboard players set out_5 du_data 1
scoreboard players set out_6 du_data 1
scoreboard players set out_7 du_data 1
scoreboard players set out_8 du_data 1

function #du:recipes
function du:custom_crafter/inv/get_16

execute if score out du_data matches 1.. run function du:custom_crafter/check_output

execute if score out du_data matches 1.. run tag @s add du_has_recipe

