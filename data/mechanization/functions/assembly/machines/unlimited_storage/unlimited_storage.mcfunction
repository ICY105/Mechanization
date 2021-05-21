
#ui
item replace block ~ ~ ~ container.1 with minecraft:structure_block{CustomModelData:6422203,du_gui:1b,HideFlags:63,display:{Name:'""'}}
execute if score $base.timer_100 du_data matches 0..1 run data merge entity @s {Fire:32000s}

#back up item counts
execute unless score @s mech_data matches -2147483648.. store result score @s mech_data run data get entity @s ArmorItems[3].tag.mech_data
execute store result entity @s ArmorItems[3].tag.mech_data int 1 run scoreboard players get @s mech_data

#run IO commands
execute unless score @s mech_data matches 2147483580.. if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:assembly/machines/unlimited_storage/input
execute if score @s mech_data matches 1.. unless data block ~ ~ ~ Items[{Slot:2b,Count:64b}] run function mechanization:assembly/machines/unlimited_storage/output

#cleanup
execute unless block ~ ~ ~ minecraft:furnace run function mechanization:base/utils/break_machine_t2

