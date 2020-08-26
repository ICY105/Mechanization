
## ui

#remove bad items
data remove block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items set from block ~ ~ ~ Items
replaceitem block -29999999 0 1601 container.10 air
execute if entity @s[tag=mech_active] run replaceitem block -29999999 0 1601 container.12 air
execute if entity @s[tag=mech_active] run replaceitem block -29999999 0 1601 container.13 air
execute if entity @s[tag=mech_active] run replaceitem block -29999999 0 1601 container.14 air
execute if entity @s[tag=mech_active] run replaceitem block -29999999 0 1601 container.15 air
execute if entity @s[tag=mech_active] run replaceitem block -29999999 0 1601 container.16 air
data remove block -29999999 0 1601 Items[{tag:{du_gui:1b}}]
loot give @p mine -29999999 0 1601 minecraft:air{drop_contents:true}

#reset
replaceitem block ~ ~ ~ container.0 minecraft:structure_block{CustomModelData:6424501,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.1 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.2 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.3 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.4 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.5 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.6 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.7 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.8 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}

replaceitem block ~ ~ ~ container.9 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.11 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if entity @s[tag=!mech_active] run replaceitem block ~ ~ ~ container.12 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if entity @s[tag=!mech_active] run replaceitem block ~ ~ ~ container.13 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if entity @s[tag=!mech_active] run replaceitem block ~ ~ ~ container.14 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if entity @s[tag=!mech_active] run replaceitem block ~ ~ ~ container.15 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute if entity @s[tag=!mech_active] run replaceitem block ~ ~ ~ container.16 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.17 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}

replaceitem block ~ ~ ~ container.18 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.19 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.20 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.21 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.22 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.23 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.24 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.25 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
replaceitem block ~ ~ ~ container.26 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}

### Main
data merge entity @s {Fire:32676}

execute if entity @s[tag=!mech_active] if data block ~ ~ ~ Items[{Slot:10b,tag:{mech_modify:1b}}] run data modify block ~ ~ ~ Items append from block ~ ~ ~ Items[{Slot:10b}].tag.mech_modifiers[]
execute if entity @s[tag=!mech_active] if data block ~ ~ ~ Items[{Slot:10b,tag:{mech_modify:1b}}] run tag @s add mech_active

## cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t2
