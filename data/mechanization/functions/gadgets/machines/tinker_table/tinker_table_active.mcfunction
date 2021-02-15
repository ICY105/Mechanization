
#remove bad items
data remove block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items set from block ~ ~ ~ Items
replaceitem block -29999999 0 1601 container.10 air
execute if score in_0 mech_data matches 1.. run replaceitem block -29999999 0 1601 container.12 air
execute if score in_0 mech_data matches 2.. run replaceitem block -29999999 0 1601 container.13 air
execute if score in_0 mech_data matches 3.. run replaceitem block -29999999 0 1601 container.14 air
execute if score in_0 mech_data matches 4.. run replaceitem block -29999999 0 1601 container.15 air
execute if score in_0 mech_data matches 5.. run replaceitem block -29999999 0 1601 container.16 air
execute if score in_0 mech_data matches 6.. run replaceitem block -29999999 0 1601 container.17 air
data remove block -29999999 0 1601 Items[{tag:{du_gui:1b}}]
execute if data block -29999999 0 1601 Items[0] run loot give @p mine -29999999 0 1601 minecraft:air{drop_contents:true}
execute if data block -29999999 0 1601 Items[0] run function mechanization:gadgets/machines/tinker_table/reset_ui

## ui
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{du_gui:1b}}] run replaceitem block ~ ~ ~ container.12 minecraft:air
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{du_gui:1b}}] run replaceitem block ~ ~ ~ container.13 minecraft:air
execute if data block ~ ~ ~ Items[{Slot:14b,tag:{du_gui:1b}}] run replaceitem block ~ ~ ~ container.14 minecraft:air
execute if data block ~ ~ ~ Items[{Slot:15b,tag:{du_gui:1b}}] run replaceitem block ~ ~ ~ container.15 minecraft:air
execute if data block ~ ~ ~ Items[{Slot:16b,tag:{du_gui:1b}}] run replaceitem block ~ ~ ~ container.16 minecraft:air

### Main
execute unless data block ~ ~ ~ Items[{Slot:10b,tag:{mech_modify:1b}}] run tag @s remove mech_active
execute if entity @s[tag=!mech_active] run replaceitem block ~ ~ ~ container.12 minecraft:air
execute if entity @s[tag=!mech_active] run replaceitem block ~ ~ ~ container.13 minecraft:air
execute if entity @s[tag=!mech_active] run replaceitem block ~ ~ ~ container.14 minecraft:air
execute if entity @s[tag=!mech_active] run replaceitem block ~ ~ ~ container.15 minecraft:air
execute if entity @s[tag=!mech_active] run replaceitem block ~ ~ ~ container.16 minecraft:air
execute if entity @s[tag=mech_active] run function mechanization:gadgets/machines/tinker_table/add_modifiers

#set UI scale
execute if score in_0 mech_data matches 1 run replaceitem block ~ ~ ~ container.0 minecraft:structure_block{CustomModelData:6424501,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if score in_0 mech_data matches 2 run replaceitem block ~ ~ ~ container.0 minecraft:structure_block{CustomModelData:6424502,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if score in_0 mech_data matches 3 run replaceitem block ~ ~ ~ container.0 minecraft:structure_block{CustomModelData:6424503,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if score in_0 mech_data matches 4 run replaceitem block ~ ~ ~ container.0 minecraft:structure_block{CustomModelData:6424504,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if score in_0 mech_data matches 5 run replaceitem block ~ ~ ~ container.0 minecraft:structure_block{CustomModelData:6424505,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if score in_0 mech_data matches 6 run replaceitem block ~ ~ ~ container.0 minecraft:structure_block{CustomModelData:6424506,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}


#set slot count
execute if score in_0 mech_data matches ..1 run replaceitem block ~ ~ ~ container.13 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if score in_0 mech_data matches ..2 run replaceitem block ~ ~ ~ container.14 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if score in_0 mech_data matches ..3 run replaceitem block ~ ~ ~ container.15 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if score in_0 mech_data matches ..4 run replaceitem block ~ ~ ~ container.16 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if score in_0 mech_data matches ..5 run replaceitem block ~ ~ ~ container.17 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}