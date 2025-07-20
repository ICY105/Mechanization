
loot spawn ~ ~ ~ loot mechanization:nuclear/steam_condenser
execute align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @n[type=minecraft:interaction,tag=mechanization.block_hitbox.steam_condenser,distance=..0.1]

setblock ~ ~ ~ minecraft:air replace
kill @s
