
## ui

#remove bad items
execute if entity @s[tag=!mech_active] run data remove block -29999999 0 1601 Items
execute if entity @s[tag=!mech_active] run data modify block -29999999 0 1601 Items set from block ~ ~ ~ Items
execute if entity @s[tag=!mech_active] run item replace block -29999999 0 1601 container.10 with air
execute if entity @s[tag=!mech_active] run data remove block -29999999 0 1601 Items[{tag:{du_gui:1b}}]
execute if entity @s[tag=!mech_active] run loot give @p mine -29999999 0 1601 minecraft:air{drop_contents:true}

function mechanization:gadgets/machines/tinker_table/reset_ui

### Main
data merge entity @s {Fire:32676}

execute if entity @s[tag=!mech_active] if data block ~ ~ ~ Items[{Slot:10b,tag:{mech_modify:1b}}] run data modify block ~ ~ ~ Items append from block ~ ~ ~ Items[{Slot:10b}].tag.mech_modifiers[]
execute if entity @s[tag=!mech_active] if data block ~ ~ ~ Items[{Slot:10b,tag:{mech_modify:1b}}] run tag @s add mech_active

## cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t2
