
loot spawn ~ ~ ~ loot mechanization:machines/fluid_pipe
function fluid:v1/api/break_pipe

execute align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @e[type=minecraft:interaction,tag=mechanization.block_hitbox.fluid_pipe,sort=nearest,limit=1]
setblock ~ ~ ~ minecraft:air
kill @s

