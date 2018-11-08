execute store result score out_0 du_data run data get entity @s UUIDMost 0.0000000002328306437081
execute store result score temp_0 du_data run data get entity @s UUIDLeast 0.0000000002328306437081

scoreboard players operation out_0 du_data += temp_0 du_data
scoreboard players operation @s du_uuid = out_0 du_data