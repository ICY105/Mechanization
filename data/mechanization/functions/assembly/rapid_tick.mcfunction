															
execute if score #timer.2 mechanization.data matches 1 if entity @s[type=#mechanization:item_frames,tag=mechanization.unlimited_storage_unit] at @s run function mechanization:assembly/machines/unlimited_storage_unit/unlimited_storage_unit
execute if score #timer.2 mechanization.data matches 0 if entity @s[type=#mechanization:item_frames,tag=mechanization.fast_hopper] at @s run function mechanization:assembly/machines/fast_hopper/fast_hopper
execute if entity @s[type=#mechanization:item_frames,tag=mechanization.terminal,tag=mechanization.active] at @s run function mechanization:assembly/machines/mss/terminal
