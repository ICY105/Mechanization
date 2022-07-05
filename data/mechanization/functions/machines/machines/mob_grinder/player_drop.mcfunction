
item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with minecraft:air
execute at @e[distance=..5,type=#mechanization:mob_grinder,tag=!smithed.strict,tag=!smithed.block] run loot spawn ~ ~1 ~ kill @e[distance=..5,type=#mechanization:mob_grinder,tag=!smithed.strict,tag=!smithed.block]
item replace entity @s weapon.mainhand from block -30000000 0 3201 container.0
