execute store result entity @s Pos[0] double 1 run scoreboard players get @s mech_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @s mech_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @s mech_z

execute at @s run tp @s ~ ~ ~

execute if score @s mech_data matches 0 at @s align xyz run tp @a[tag=mech_teleporting] ~0.5 ~1 ~0.5
execute if score @s mech_data matches -1 at @s in the_nether align xyz run tp @a[tag=mech_teleporting] ~0.5 ~1 ~0.5
execute if score @s mech_data matches 1 at @s in the_end align xyz run tp @a[tag=mech_teleporting] ~0.5 ~1 ~0.5
execute at @e[tag=du_spawn_chunks] run tp @s ~ ~ ~