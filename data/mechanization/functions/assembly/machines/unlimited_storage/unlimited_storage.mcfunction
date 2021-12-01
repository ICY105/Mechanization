
#ui
item replace block ~ ~ ~ container.1 with minecraft:structure_block{CustomModelData:6421202,du_gui:1b,HideFlags:63,display:{Name:'""'}}

#back up item counts
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.data matches -2147483648.. store result score @s mechanization.data run data get entity @s Item.tag.mech_data
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_data int 1 run scoreboard players get @s mech_data

#run IO commands
execute unless score @s mechanization.data matches 2147483580.. if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:assembly/machines/unlimited_storage/input
execute if score @s mechanization.data matches 1.. unless data block ~ ~ ~ Items[{Slot:2b,Count:64b}] run function mechanization:assembly/machines/unlimited_storage/output

#cleanup
execute unless block ~ ~ ~ minecraft:furnace run function mechanization:base/utils/break_machine_t2

