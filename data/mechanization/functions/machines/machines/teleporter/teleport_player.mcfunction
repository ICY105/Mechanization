
execute store result score temp_0 mech_data in minecraft:overworld run data get block -29999999 0 1600 RecordItem.tag.mech.temp[0].pos_x
execute store result score temp_1 mech_data in minecraft:overworld run data get block -29999999 0 1600 RecordItem.tag.mech.temp[0].pos_y
execute store result score temp_2 mech_data in minecraft:overworld run data get block -29999999 0 1600 RecordItem.tag.mech.temp[0].pos_z
execute store result score temp_3 mech_data in minecraft:overworld run data get block -29999999 0 1600 RecordItem.tag.mech.temp[0].dimension
execute store result score temp_4 mech_data in minecraft:overworld run data get block -29999999 0 1600 RecordItem.tag.mech.temp[0].uuid
scoreboard players add temp_1 mech_data 1

summon armor_stand ~ ~ ~ {Tags:["mech_teleport_mark"],Marker:1b}
execute as @e[tag=mech_teleport_mark,limit=1] run function mechanization:machines/machines/teleporter/teleport_player_2
