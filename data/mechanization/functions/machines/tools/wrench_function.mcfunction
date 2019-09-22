
execute as @e[tag=mech_tree_feller_model,distance=..0.75] at @s run function mechanization:machines/tools/rotate_tree_feller_model

execute if entity @s[tag=mech_quarry] run function mechanization:machines/machines/quarry/scan_boundry

execute if entity @s[tag=mech_super_piston,tag=!mech_active] run function mechanization:machines/tools/rotate_super_piston
execute if entity @s[tag=mech_super_sticky_piston,tag=!mech_active] run function mechanization:machines/tools/rotate_super_piston
