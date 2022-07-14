
execute positioned ~ ~-1 ~ as @e[tag=mechanization.tree_feller_model,distance=..0.75] at @s run function mechanization:machines/player/rotate_tree_feller_model
execute if entity @s[tag=mechanization.energy_relay] run function mechanization:machines/machines/energy_relay/modify
execute if entity @s[tag=mechanization.quarry] run function mechanization:machines/machines/quarry/scan_boundry
