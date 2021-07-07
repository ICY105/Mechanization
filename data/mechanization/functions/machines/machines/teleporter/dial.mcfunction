
scoreboard players set @s du_data 1
function mechanization:machines/machines/teleporter/get_valid_teleporters

execute store result score $in_0 mech_data run data get storage du:temp obj.valid
execute if score $in_0 mech_data matches 0 run title @a[distance=..0.5] actionbar [{"translate":"mech.block.teleporter.no_destination","color":"green"}]
execute if score $in_0 mech_data matches 1.. run tellraw @a[distance=..0.5] [{"translate":"mech.block.teleporter.select_destination","color":"gold","underlined":true}]
execute if score $in_0 mech_data matches 1.. run scoreboard players enable @a[distance=..0.5] mech_tele
execute if score $in_0 mech_data matches 1.. run function mechanization:machines/machines/teleporter/dial_2
