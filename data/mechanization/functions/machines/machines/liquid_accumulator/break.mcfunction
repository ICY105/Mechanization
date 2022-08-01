
function mechanization:base/utils/break_drop_inv

loot spawn ~ ~ ~ loot mechanization:machines/liquid_accumulator
function mechanization:base/utils/break_copy_data

function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
setblock ~ ~ ~ minecraft:air replace
kill @s
