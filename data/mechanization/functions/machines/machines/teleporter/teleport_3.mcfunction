
#move to pos
execute store result entity @s Pos[0] double 1 run scoreboard players get $temp_1 mech_data
execute store result entity @s Pos[1] double 1 run scoreboard players get $temp_2 mech_data
execute store result entity @s Pos[2] double 1 run scoreboard players get $temp_3 mech_data

execute at @s run tp @s ~0.5 ~ ~0.5

#tele players
execute if score $temp_0 mech_data matches 1 at @s in minecraft:overworld positioned as @s run tp @a[tag=mech_teleport_mark] ~ ~1 ~
execute if score $temp_0 mech_data matches 2 at @s in minecraft:the_nether positioned as @s run tp @a[tag=mech_teleport_mark] ~ ~1 ~
execute if score $temp_0 mech_data matches 3 at @s in minecraft:the_end positioned as @s run tp @a[tag=mech_teleport_mark] ~ ~1 ~

#cleanup
tag @a[tag=mech_teleport_mark] remove mech_teleport_mark
execute at @s run playsound mechanization:machines.teleporter_boom block @a ~ ~ ~ 1 1
kill @s
