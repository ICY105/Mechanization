
function mechanization:base/utils/break_drop_inv

loot spawn ~ ~ ~ loot mechanization:machines/dimensional_generator
function mechanization:base/utils/break_copy_data

function energy:v1/api/break_machine
setblock ~ ~ ~ minecraft:air replace
kill @s
