
execute if block ~ ~ ~ minecraft:moving_piston run setblock ~ ~ ~ minecraft:air
loot spawn ~ ~ ~ loot mechanization:assembly/item_pipe
tag @s remove mechanization.item_pipe
kill @s

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:item_display,tag=mechanization.item_pipe,distance=0.5..1.3] run function mechanization:assembly/blocks/item_pipe/break_2
