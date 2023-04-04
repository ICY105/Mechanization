####################
# Clears the crafting input
####################

tag @s remove smithed.crafter.assembled_output
execute as @a[distance=..12, sort=nearest, tag=smithed.inside_crafter] run function smithed.crafter:v0.1.0/block/table/crafting/output/cursor_check/main
execute if entity @s[tag=!smithed.no_shift_click] unless entity @a[distance=..12, sort=nearest, tag=smithed.inside_crafter, tag=!smithed.shift_clicked] run function smithed.crafter:v0.1.0/block/table/crafting/output/shift_click/main

function smithed.crafter:v0.1.0/block/table/crafting/output/clear_input/test

data modify storage smithed.crafter:input flags set value []
