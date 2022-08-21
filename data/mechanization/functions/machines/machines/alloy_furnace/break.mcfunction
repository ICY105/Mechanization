
loot spawn ~ ~ ~ loot mechanization:machines/alloy_furnace
function mechanization:base/utils/break_copy_data
function mechanization:base/utils/break_drop_inv

function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
function energy:v1/api/break_machine
setblock ~ ~ ~ minecraft:air replace
kill @s
