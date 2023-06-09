
loot spawn ~ ~ ~ loot mechanization:machines/solar_panel
function mechanization:base/utils/break_block/break_copy_data
function energy:v1/api/break_machine

execute align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[type=minecraft:item_display,tag=mechanization.solar_panel.model,distance=..0.2]
setblock ~ ~ ~ minecraft:air replace
kill @s
