
execute align y if entity @s[tag=mechanization.tree_feller.model,distance=..0.5] run function mechanization:machines/player/wrench/rotate_tree_feller_model
execute if entity @s[tag=mechanization.energy_relay] run function mechanization:machines/blocks/energy_relay/modify
execute if entity @s[tag=mechanization.quarry] run function mechanization:machines/blocks/quarry/scan_boundry
