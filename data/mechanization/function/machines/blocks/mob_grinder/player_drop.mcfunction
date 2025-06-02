
item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with minecraft:air
execute positioned ~-4 ~-1 ~-4 at @e[type=#mechanization:mob_grinder,dx=8,dy=2,dz=8,tag=!smithed.strict,tag=!smithed.block] run loot spawn ~ ~ ~ kill @n[type=#mechanization:mob_grinder,tag=!smithed.strict,tag=!smithed.block]
execute positioned ~-4 ~-3 ~-4 run tp @e[type=item,dx=8,dy=6,dz=8,tag=!smithed.strict,tag=!smithed.block] ~4 ~4 ~4
item replace entity @s weapon.mainhand from block -30000000 0 3201 container.0
