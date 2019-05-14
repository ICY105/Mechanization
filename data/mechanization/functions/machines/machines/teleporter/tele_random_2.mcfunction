
function mechanization:machines/machines/teleporter/get_valid_teleporters

execute store result score in_0 mech_data in minecraft:overworld run data get block -29999999 0 1600 RecordItem.tag.mech.temp
scoreboard players remove in_0 mech_data 1
execute if score in_0 mech_data matches ..-1 positioned ~ ~0.5 ~ run title @a[distance=..0.5] actionbar [{"translate":"mech.block.teleporter.no_destination","color":"green"}]
execute if score in_0 mech_data matches ..-1 run stopsound @a[distance=..16] * mechanization:machines.teleporter_charging

execute if score in_0 mech_data matches 1.. run scoreboard players operation in_0 du_data = in_0 du_data
execute if score in_0 mech_data matches 1.. run function du:math/random
execute if score in_0 mech_data matches 1.. run scoreboard players operation in_0 mech_data = out_0 du_data
execute if score in_0 mech_data matches 1.. run function mechanization:machines/machines/teleporter/remove_temp
execute if score in_0 mech_data matches 0.. run function mechanization:machines/machines/teleporter/teleport_player

execute in minecraft:overworld run data modify block -29999999 0 1600 RecordItem.tag.mech.temp set value []
