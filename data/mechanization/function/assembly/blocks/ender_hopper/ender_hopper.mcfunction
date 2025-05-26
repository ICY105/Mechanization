
execute if block ~ ~ ~ minecraft:hopper[enabled=true] unless data block ~ ~ ~ Items[4] align xyz positioned ~-4 ~-4 ~-4 run tp @n[type=item,dx=8,dy=8,dz=8,tag=!smithed.ignore,tag=!smithed.entity,tag=!smithed.strict] ~4 ~5 ~4

execute unless block ~ ~ ~ minecraft:hopper run playsound minecraft:block.glass.break block @a[distance=..8]
execute unless block ~ ~ ~ minecraft:hopper run kill @s
