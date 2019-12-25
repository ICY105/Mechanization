
## ui

#remove bad items
data remove block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items set from block ~ ~ ~ Items
data remove block -29999999 0 1601 Items[{tag:{du_gui:1b}}]
replaceitem block -29999999 0 1601 container.9 air
replaceitem block -29999999 0 1601 container.11 air
replaceitem block -29999999 0 1601 container.12 air
replaceitem block -29999999 0 1601 container.13 air
replaceitem block -29999999 0 1601 container.14 air
replaceitem block -29999999 0 1601 container.15 air
replaceitem block -29999999 0 1601 container.17 air
replaceitem block -29999999 0 1601 container.22 air
loot give @p mine -29999999 0 1601 minecraft:air{drop_contents:true}

#reset
replaceitem block ~ ~ ~ container.0 minecraft:structure_block{CustomModelData:6424500,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.1 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.2 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.3 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.4 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.5 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.6 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.7 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.8 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.10 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.16 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.18 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.19 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.20 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.21 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.23 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.24 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.25 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.26 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}

### Main
data merge entity @s {Fire:32676}

#remove modifiers
execute if block ~ ~ ~ barrel{Items:[{Slot:9b, tag:{mech_modifiers:[{}]} }]} unless block ~ ~ ~ barrel{Items:[{Slot:11b}]} unless block ~ ~ ~ barrel{Items:[{Slot:12b}]} unless block ~ ~ ~ barrel{Items:[{Slot:13b}]} unless block ~ ~ ~ barrel{Items:[{Slot:14b}]} unless block ~ ~ ~ barrel{Items:[{Slot:15b}]} unless block ~ ~ ~ barrel{Items:[{Slot:22b}]} run function mechanization:gadgets/machines/tinker_table/remove_modifiers

#add modifiers
scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ barrel{Items:[{Slot:11b}]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[{Slot:12b}]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[{Slot:13b}]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[{Slot:14b}]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[{Slot:15b}]} run scoreboard players add temp_0 mech_data 1
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b}}]} unless block ~ ~ ~ barrel{Items:[{ Slot:17b,tag:{mech_modifiers:[{}]} }]} run function mechanization:gadgets/machines/tinker_table/add_modifiers

## cleanup
execute unless block ~ ~ ~ barrel run loot spawn ~ ~ ~ loot mechanization:base/tier_2_machine_frame
execute unless block ~ ~ ~ barrel run kill @s
