
item replace block -29999999 0 1601 container.0 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with minecraft:air
execute at @e[distance=..5,type=#mechanization:mob_grinder,tag=!global.ignore.kill] run loot spawn ~ ~1 ~ kill @e[distance=..0.01,type=#mechanization:mob_grinder,tag=!global.ignore.kill,sort=nearest,limit=1]
item replace entity @s weapon.mainhand from block -29999999 0 1601 container.0
