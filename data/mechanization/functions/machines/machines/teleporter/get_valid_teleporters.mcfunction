
execute in minecraft:overworld run data modify block -29999999 0 1600 RecordItem.tag.mech.temp set value []
execute store result score in_0 mech_data in minecraft:overworld run data get block -29999999 0 1600 RecordItem.tag.mech.teleporters
execute store result score in_1 mech_data run data get entity @s Dimension
function mechanization:machines/machines/teleporter/get_valid_teleporters_2
