# 
# Copies fluid data from entity into storage.
# Entity independent, assumes data exists.
#
data modify storage fluid:io fluids set value []

execute if entity @s[type=minecraft:armor_stand] run data modify storage fluid:io fluids set from entity @s ArmorItems[3].tag.fluids
execute if entity @s[type=minecraft:item_frame] run data modify storage fluid:io fluids set from entity @s Item.tag.fluids
execute if entity @s[type=minecraft:glow_item_frame] run data modify storage fluid:io fluids set from entity @s Item.tag.fluids
execute if entity @s[type=minecraft:item_display] run data modify storage fluid:io fluids set from entity @s item.tag.fluids
execute if entity @s[type=minecraft:marker] run data modify storage fluid:io fluids set from entity @s data.fluids
