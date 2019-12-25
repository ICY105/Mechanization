
execute store result score in_0 mech_data run data get storage mechanization:networks teleporter
scoreboard players operation in_1 mech_data = @s du_uuid
execute if score in_0 mech_data matches 1.. run function mechanization:machines/machines/teleporter/remove_2
execute if block ~ ~ ~ barrier run setblock ~ ~ ~ air
kill @s