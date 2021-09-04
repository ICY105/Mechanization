
loot spawn ~ ~ ~ loot mechanization:machines/liquid_pipe
setblock ~ ~ ~ minecraft:air
kill @s

execute align xyz positioned ~0.5 ~0.9 ~0.5 as @e[type=item_frame,tag=mech_pipe,distance=0.5..1.3] run function mechanization:machines/machines/liquid_pipe/break_2
