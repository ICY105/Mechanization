
execute if entity @s[tag=mechanization.moderator_cell.empty] run loot spawn ~ ~ ~ loot mechanization:nuclear/moderator_cell
execute if entity @s[tag=mechanization.moderator_cell.water] run loot spawn ~ ~ ~ loot mechanization:nuclear/water_moderator_cell
execute if entity @s[tag=mechanization.moderator_cell.heavy_water] run loot spawn ~ ~ ~ loot mechanization:nuclear/heavy_water_moderator_cell

execute align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @e[type=minecraft:interaction,tag=mechanization.block_hitbox.moderator_cell,distance=..0.1,sort=nearest,limit=1]
setblock ~ ~ ~ minecraft:air replace
kill @s
