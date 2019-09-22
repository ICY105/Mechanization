
#move to pos
execute store result entity @s Pos[0] double 1 run scoreboard players get temp_0 mech_data
execute store result entity @s Pos[1] double 1 run scoreboard players get temp_1 mech_data
execute store result entity @s Pos[2] double 1 run scoreboard players get temp_2 mech_data

execute at @s run tp @s ~0.5 ~ ~0.5

#tele players
execute positioned ~ ~0.5 ~ run tp @a[distance=..0.5] @s
execute if score temp_3 mech_data matches -1 at @s as @a[distance=..0.5] in minecraft:the_nether run tp @s ~ ~ ~
execute if score temp_3 mech_data matches 0 at @s as @a[distance=..0.5] in minecraft:overworld run tp @s ~ ~ ~
execute if score temp_3 mech_data matches 1 at @s as @a[distance=..0.5] in minecraft:the_end run tp @s ~ ~ ~


#check for teleporter
scoreboard players set temp_5 mech_data 0
execute at @s store success score temp_5 mech_data if entity @e[tag=mech_teleporter,distance=..1]

execute if score temp_5 mech_data matches 0 run scoreboard players operation in_1 mech_data = temp_4 mech_data
execute if score temp_5 mech_data matches 0 store result score in_0 mech_data in minecraft:overworld run data get block -29999999 0 1600 RecordItem.tag.mech.teleporters
execute if score temp_5 mech_data matches 0 run function mechanization:machines/machines/teleporter/remove_2

#cleanup
execute at @s run playsound mechanization:machines.teleporter_boom block @a ~ ~ ~ 1 1
kill @s
