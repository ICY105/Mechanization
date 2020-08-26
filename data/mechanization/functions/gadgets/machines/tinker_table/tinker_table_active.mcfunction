
## ui
replaceitem block ~ ~ ~ container.0 minecraft:structure_block{CustomModelData:6424500,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
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
