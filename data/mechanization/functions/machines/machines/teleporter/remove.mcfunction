
execute store result score $in_0 mechanization.data run data get storage mechanization:networks teleporter
execute if score $in_0 mechanization.data matches 1.. run function mechanization:machines/machines/teleporter/remove_2

execute if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ air
kill @s
