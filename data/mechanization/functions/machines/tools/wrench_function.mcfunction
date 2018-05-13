#Tree Feller
execute as @e[tag=mech_tree_feller_model,nbt={Rotation:[270f,0f]},distance=..0.75] at @s run tp @s ~0.23 ~ ~0.23
execute as @e[tag=mech_tree_feller_model,nbt={Rotation:[180f,0f]},distance=..0.75] at @s run tp @s ~0.23 ~ ~-0.23
execute as @e[tag=mech_tree_feller_model,nbt={Rotation:[90f,0f]},distance=..0.75] at @s run tp @s ~-0.23 ~ ~-0.23
execute as @e[tag=mech_tree_feller_model,nbt={Rotation:[0.01f,0f]},distance=..0.75] at @s run tp @s ~-0.23 ~ ~0.23
execute as @e[tag=mech_tree_feller_model,nbt={Rotation:[-180f,0f]},distance=..0.75] at @s run data merge entity @s {Rotation:[180f,0f]}
execute as @e[tag=mech_tree_feller_model,nbt={Rotation:[-90f,0f]},distance=..0.75] at @s run data merge entity @s {Rotation:[270f,0f]}