scoreboard players add @s mech_data 1
execute if score @s mech_data matches 6 run scoreboard players set @s mech_data 0
tag @s remove mech_active

execute if score @s mech_data matches 0 run data merge entity @s {Rotation:[270f,0f]}
execute if score @s mech_data matches 1 run data merge entity @s {Rotation:[180f,0f]}
execute if score @s mech_data matches 2 run data merge entity @s {Rotation:[90f,0f]}
execute if score @s mech_data matches 3 run data merge entity @s {Rotation:[0f,0f]}

execute if score @s[tag=mech_super_piston] mech_data matches 0..3 store success entity @s ArmorItems[3].tag.CustomModelData int 6422020 if entity @s
execute if score @s[tag=mech_super_piston] mech_data matches 4 store success entity @s ArmorItems[3].tag.CustomModelData int 6422913 if entity @s
execute if score @s[tag=mech_super_piston] mech_data matches 5 store success entity @s ArmorItems[3].tag.CustomModelData int 6422915 if entity @s

execute if score @s[tag=mech_super_sticky_piston] mech_data matches 0..3 store success entity @s ArmorItems[3].tag.CustomModelData int 6422021 if entity @s
execute if score @s[tag=mech_super_sticky_piston] mech_data matches 4 store success entity @s ArmorItems[3].tag.CustomModelData int 6422918 if entity @s
execute if score @s[tag=mech_super_sticky_piston] mech_data matches 5 store success entity @s ArmorItems[3].tag.CustomModelData int 6422920 if entity @s

