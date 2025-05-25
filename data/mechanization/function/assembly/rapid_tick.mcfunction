															
execute if score #timer.2 mechanization.data matches 0 if entity @s[type=minecraft:item_display,tag=mechanization.fast_hopper] at @s run function mechanization:assembly/blocks/fast_hopper/fast_hopper
execute if score #timer.2 mechanization.data matches 1 if entity @s[type=minecraft:item_display,tag=mechanization.unlimited_storage_unit] at @s run function mechanization:assembly/blocks/unlimited_storage_unit/unlimited_storage_unit
