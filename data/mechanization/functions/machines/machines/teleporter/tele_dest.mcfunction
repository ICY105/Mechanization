
scoreboard players add @s du_data 1
execute if score @s du_data matches 2 run playsound mechanization:machines.teleporter_charging block @a ~ ~ ~ 1 1

execute if score @s du_data matches 6 run data modify storage du:temp obj set value {valid:[]}
execute if score @s du_data matches 6 run data modify storage du:temp obj.valid set from storage mechanization:networks teleporter
execute if score @s du_data matches 6 run function mechanization:machines/machines/teleporter/tele_dest_2

execute if score @s du_data matches 6 store result score temp_0 mechanization.data run data get storage du:temp obj.valid
execute if score @s du_data matches 6 if score temp_0 mechanization.data matches 0 run title @a[distance=..0.5] actionbar [{"translate":"mech.block.teleporter.no_destination","color":"green"}] 
execute if score @s du_data matches 6 if score temp_0 mechanization.data matches 1.. run function mechanization:machines/machines/teleporter/teleport_player
