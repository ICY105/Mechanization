
execute if data entity @s ArmorItems[0].Count run data modify entity @s HandItems[0] set from entity @s ArmorItems[0]
execute if data entity @s ArmorItems[1].Count run data modify entity @s HandItems[0] set from entity @s ArmorItems[1]
execute if data entity @s ArmorItems[2].Count run data modify entity @s HandItems[0] set from entity @s ArmorItems[2]
execute if data entity @s ArmorItems[3].Count run data modify entity @s HandItems[0] set from entity @s ArmorItems[3]
data merge entity @s {ArmorItems:[{},{},{},{}]}
