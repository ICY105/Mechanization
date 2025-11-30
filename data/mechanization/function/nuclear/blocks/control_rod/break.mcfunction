
loot spawn ~ ~ ~ loot mechanization:nuclear/control_rod

execute align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @n[type=minecraft:interaction,tag=mechanization.block_hitbox.control_rod,distance=..0.1]
setblock ~ ~ ~ minecraft:air replace
kill @s
