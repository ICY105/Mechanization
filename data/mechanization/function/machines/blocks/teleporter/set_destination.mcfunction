
data modify entity @s item.components."minecraft:custom_data".dest set from storage mechanization:temp obj
tellraw @p [{"translate":"text.mechanization.gps_set_pos","color":"dark_green","with":[{"nbt":"obj.x","storage":"mechanization:temp","color":"dark_aqua"},{"nbt":"obj.y","storage":"mechanization:temp","color":"dark_aqua"},{"nbt":"obj.y","storage":"mechanization:temp","color":"dark_aqua"},{"nbt":"obj.dimension","storage":"mechanization:temp","color":"dark_aqua"}]}]
