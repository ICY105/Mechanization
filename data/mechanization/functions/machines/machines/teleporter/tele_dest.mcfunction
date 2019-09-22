
scoreboard players add @s du_data 1
execute if score @s du_data matches 2 run playsound mechanization:machines.teleporter_charging block @a ~ ~ ~ 1 1

execute if score @s du_data matches 6 in minecraft:overworld run data modify block -29999999 0 1600 RecordItem.tag.mech.temp set value []
execute if score @s du_data matches 6 store result score in_0 mech_data in minecraft:overworld run data get block -29999999 0 1600 RecordItem.tag.mech.teleporters
execute if score @s du_data matches 6 run function mechanization:machines/machines/teleporter/tele_dest_2

execute if score @s du_data matches 6 store result score temp_0 mech_data in minecraft:overworld run data get block -29999999 0 1600 RecordItem.tag.mech.temp
execute if score @s du_data matches 6 if score temp_0 mech_data matches 0 positioned ~ ~0.5 ~ run title @a[distance=..0.5] actionbar [{"translate":"mech.block.teleporter.no_destination","color":"green"}] 
execute if score @s du_data matches 6 if score temp_0 mech_data matches 1 run function mechanization:machines/machines/teleporter/teleport_player
