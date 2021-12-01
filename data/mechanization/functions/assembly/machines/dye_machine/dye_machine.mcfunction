
#load scoreboard values
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid

#ui
item replace block ~ ~ ~ container.0 with minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:'""'}}
item replace block ~ ~ ~ container.2 with minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:'""'}}
item replace block ~ ~ ~ container.3 with minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:'""'}}
item replace block ~ ~ ~ container.4 with minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:'""'}}
item replace block ~ ~ ~ container.5 with minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:'""'}}
item replace block ~ ~ ~ container.6 with minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:'""'}}
item replace block ~ ~ ~ container.8 with minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:'""'}}

#main
execute if score @s[nbt={ItemRotation:4b}] mech_power matches 16.. if data block ~ ~ ~ Items[{Slot:1b}] if data block ~ ~ ~ Items[{Slot:7b}] rotated 180 0 run function mechanization:assembly/machines/dye_machine/start
execute if score @s[nbt={ItemRotation:2b}] mech_power matches 16.. if data block ~ ~ ~ Items[{Slot:1b}] if data block ~ ~ ~ Items[{Slot:7b}] rotated -90 0 run function mechanization:assembly/machines/dye_machine/start
execute if score @s[nbt={ItemRotation:0b}] mech_power matches 16.. if data block ~ ~ ~ Items[{Slot:1b}] if data block ~ ~ ~ Items[{Slot:7b}] rotated 0 0 run function mechanization:assembly/machines/dye_machine/start
execute if score @s[nbt={ItemRotation:6b}] mech_power matches 16.. if data block ~ ~ ~ Items[{Slot:1b}] if data block ~ ~ ~ Items[{Slot:7b}] rotated 90 0 run function mechanization:assembly/machines/dye_machine/start

#store scoreboard values
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_machine_t2
