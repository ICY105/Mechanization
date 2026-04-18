
# rotate item display
execute if entity @s[type=minecraft:item_display] if entity @s[x_rotation=90] run tp @s ~ ~ ~ 1 1
execute if entity @s[type=minecraft:item_display] if entity @s[x_rotation=-90] run tp @s ~ ~ ~ 0 90

execute if entity @s[type=minecraft:item_display] if entity @s[y_rotation=270,x_rotation=0] run tp @s ~ ~ ~ 0 -90
execute if entity @s[type=minecraft:item_display] if entity @s[y_rotation=180,x_rotation=0] run tp @s ~ ~ ~ 270 0
execute if entity @s[type=minecraft:item_display] if entity @s[y_rotation=90,x_rotation=0] run tp @s ~ ~ ~ 180 0
execute if entity @s[type=minecraft:item_display] if entity @s[y_rotation=0,x_rotation=0] run tp @s ~ ~ ~ 90 0
execute if entity @s[type=minecraft:item_display] if entity @s[y_rotation=1,x_rotation=1] run tp @s ~ ~ ~ 0 0
