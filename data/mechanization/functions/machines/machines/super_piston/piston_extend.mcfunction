
scoreboard players set in_0 mech_data 1
execute if score @s mech_data matches 0 rotated 90 0 positioned ^ ^ ^1 run function mechanization:machines/machines/super_piston/piston_extend_2
execute if score @s mech_data matches 1 rotated 0 0 positioned ^ ^ ^1 run function mechanization:machines/machines/super_piston/piston_extend_2
execute if score @s mech_data matches 2 rotated 270 0 positioned ^ ^ ^1 run function mechanization:machines/machines/super_piston/piston_extend_2
execute if score @s mech_data matches 3 rotated 180 0 positioned ^ ^ ^1 run function mechanization:machines/machines/super_piston/piston_extend_2
execute if score @s mech_data matches 4 rotated 0 -90 positioned ^ ^ ^1 run function mechanization:machines/machines/super_piston/piston_extend_2
execute if score @s mech_data matches 5 rotated 0 90 positioned ^ ^ ^1 run function mechanization:machines/machines/super_piston/piston_extend_2

execute if score in_0 mech_data matches 1 run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1 0.7
execute if score in_0 mech_data matches 1 if score @s[tag=mech_super_piston] mech_data matches 0..3 store success entity @s ArmorItems[3].tag.CustomModelData int 6422912 if entity @s
execute if score in_0 mech_data matches 1 if score @s[tag=mech_super_piston] mech_data matches 4 store success entity @s ArmorItems[3].tag.CustomModelData int 6422914 if entity @s
execute if score in_0 mech_data matches 1 if score @s[tag=mech_super_piston] mech_data matches 5 store success entity @s ArmorItems[3].tag.CustomModelData int 6422916 if entity @s
execute if score in_0 mech_data matches 1 if score @s[tag=mech_super_sticky_piston] mech_data matches 0..3 store success entity @s ArmorItems[3].tag.CustomModelData int 6422917 if entity @s
execute if score in_0 mech_data matches 1 if score @s[tag=mech_super_sticky_piston] mech_data matches 4 store success entity @s ArmorItems[3].tag.CustomModelData int 6422919 if entity @s
execute if score in_0 mech_data matches 1 if score @s[tag=mech_super_sticky_piston] mech_data matches 5 store success entity @s ArmorItems[3].tag.CustomModelData int 6422921 if entity @s