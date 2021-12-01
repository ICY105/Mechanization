
execute store result score temp_0 mech_data run data get storage du:temp obj.valid[0].pos_x
execute store result score temp_1 mech_data run data get storage du:temp obj.valid[0].pos_y
execute store result score temp_2 mech_data run data get storage du:temp obj.valid[0].pos_z
execute store result score temp_3 mech_data run data get storage du:temp obj.valid[0].dimension
execute store result score temp_4 mech_data run data get storage du:temp obj.valid[0].uuid

summon armor_stand ~ ~ ~ {Tags:["mech_teleport_mark"],Marker:1b}
execute as @e[tag=mech_teleport_mark,limit=1] run function mechanization:machines/machines/teleporter/teleport_player_2
