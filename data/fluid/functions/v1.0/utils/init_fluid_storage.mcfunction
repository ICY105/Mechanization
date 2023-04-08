# 
# Create data entries for storing fluids if needed.
# Entity independent.
#

execute if entity @s[type=minecraft:armor_stand] unless data entity @s ArmorItems[3].id run item replace entity @s armor.head with minecraft:stone_button
execute if entity @s[type=minecraft:item_frame] unless data entity @s Item.id run item replace entity @s container.0 with minecraft:stone_button
execute if entity @s[type=minecraft:glow_item_frame] unless data entity @s Item.id run item replace entity @s container.0 with minecraft:stone_button
execute if entity @s[type=minecraft:item_display] unless data entity @s item.id run item replace entity @s container.0 with minecraft:stone_button

function fluid:v1.0/utils/get_fluids
execute unless data storage fluid:io fluids[3] run data modify storage fluid:io fluids append value {}
execute unless data storage fluid:io fluids[3] run data modify storage fluid:io fluids append value {}
execute unless data storage fluid:io fluids[3] run data modify storage fluid:io fluids append value {}
execute unless data storage fluid:io fluids[3] run data modify storage fluid:io fluids append value {}
function fluid:v1.0/utils/store_fluids
