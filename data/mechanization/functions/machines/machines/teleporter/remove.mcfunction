
execute store result score in_0 mech_data in minecraft:overworld run data get block -29999999 0 1600 RecordItem.tag.mech.teleporters
scoreboard players operation in_1 mech_data = @s du_uuid
execute if score in_0 mech_data matches 1.. run function mechanization:machines/machines/teleporter/remove_2
execute if block ~ ~ ~ barrier run setblock ~ ~ ~ air
kill @s