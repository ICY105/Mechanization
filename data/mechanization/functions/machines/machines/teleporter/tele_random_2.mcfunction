
function mechanization:machines/machines/teleporter/get_valid_teleporters

execute store result score $in_0 mech_data run data get storage du:temp obj.valid

execute if score $in_0 mech_data matches 0 run title @a[distance=..0.5] actionbar [{"translate":"mech.block.teleporter.no_destination","color":"green"}]
execute if score $in_0 mech_data matches 0 run stopsound @a[distance=..16] * mechanization:machines.teleporter_charging

execute if score $in_0 mech_data matches 1.. run scoreboard players operation $math.in_0 du_data = $in_0 mech_data
execute if score $in_0 mech_data matches 1.. run function du:math/random
execute if score $in_0 mech_data matches 1.. if score $math.out_0 du_data matches 1.. run function mechanization:machines/machines/teleporter/remove_temp
execute if score $in_0 mech_data matches 1.. run function mechanization:machines/machines/teleporter/teleport_player
