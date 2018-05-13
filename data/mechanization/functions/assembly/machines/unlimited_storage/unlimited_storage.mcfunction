execute if block ~ ~ ~ hopper{Items:[{Slot:0b}]} run function mechanization:assembly/machines/unlimited_storage/items
execute unless block ~ ~ ~ hopper{Items:[{Slot:0b}]} run function mechanization:assembly/machines/unlimited_storage/empty

execute unless block ~ ~ ~ hopper run function give:mech_machines/machine_frame_tier_2
execute unless block ~ ~ ~ hopper run kill @s
