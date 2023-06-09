
loot spawn ~ ~ ~ loot mechanization:machines/liquid_accumulator
function mechanization:base/utils/break_block/break_copy_data
function mechanization:base/utils/break_block/break_drop_inv

function fluid:v1/api/break_tank
setblock ~ ~ ~ minecraft:air replace
kill @s
