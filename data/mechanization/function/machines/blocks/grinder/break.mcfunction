
loot spawn ~ ~ ~ loot mechanization:machines/grinder
function mechanization:base/utils/break_block/break_copy_data
function mechanization:base/utils/break_block/break_drop_inv

function energy:v1/api/break_machine
setblock ~ ~ ~ minecraft:air replace
kill @s
