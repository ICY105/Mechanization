
loot spawn ~ ~ ~ loot mechanization:nuclear/control_rod

execute align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @e[type=minecraft:interaction,tag=mechanization.block_hitbox.control_rod,distance=..0.1,sort=nearest,limit=1]
setblock ~ ~ ~ minecraft:air replace
kill @s

execute positioned ~ ~1 ~ align xyz as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/update_model
execute positioned ~ ~-1 ~ align xyz as @e[tag=mechanization.reactor_core,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/update_model
