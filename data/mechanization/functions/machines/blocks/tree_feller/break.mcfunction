
loot spawn ~ ~ ~ loot mechanization:machines/tree_feller
function mechanization:base/utils/break_block/break_copy_data

function energy:v1/api/break_machine

execute align xyz positioned ~0.5 ~-0.1 ~0.5 run kill @e[type=minecraft:interaction,tag=mechanization.block_hitbox.tree_feller,sort=nearest,limit=1]
setblock ~ ~ ~ minecraft:air replace
kill @s
