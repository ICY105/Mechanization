
#ui
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

#main
data merge entity @s {Fire:32676}

execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:diamond_pickaxe",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/tool_upgrade
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:diamond_axe",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/tool_upgrade
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:diamond_shovel",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/tool_upgrade

execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:diamond_sword",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/sword_upgrade
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:trident",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/trident_upgrade

execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:leather_helmet",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/helmet_upgrade
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:leather_chestplate",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/chestplate_upgrade
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:leather_leggings",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/leggings_upgrade
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:leather_boots",tag:{modified:1}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/boots_upgrade

execute if block ~ ~ ~ dropper{Items:[{Slot:4b,tag:{modified:3}},{Slot:1b},{Slot:3b},{Slot:5b},{Slot:7b}]} run function mechanization:gadgets/machines/tinker_table/gun_upgrade

#cleanup
execute unless block ~ ~ ~ barrel run loot spawn ~ ~ ~ loot mechanization:base/tier_2_machine_frame
execute unless block ~ ~ ~ barrel run kill @s
