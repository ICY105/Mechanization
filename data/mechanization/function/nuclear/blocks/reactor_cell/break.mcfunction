
loot spawn ~ ~ ~ loot mechanization:nuclear/coolant_cell

execute align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @e[type=minecraft:interaction,tag=mechanization.block_hitbox.coolant_cell,distance=..0.1,sort=nearest,limit=1]
setblock ~ ~ ~ minecraft:air replace
kill @s
