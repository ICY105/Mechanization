
execute if entity @s[tag=mechanization.active] run function mechanization:assembly/blocks/mss/get_drive/terminal_insert 

loot spawn ~ ~ ~ loot mechanization:assembly/mss_terminal
function mechanization:base/utils/break_copy_data

function energy:v1/api/break_machine
setblock ~ ~ ~ minecraft:air replace
kill @s
