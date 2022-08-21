
item replace block ~ ~ ~ container.12 with minecraft:air
item replace block ~ ~ ~ container.13 with minecraft:air
item replace block ~ ~ ~ container.14 with minecraft:air
item replace block ~ ~ ~ container.15 with minecraft:air
item replace block ~ ~ ~ container.16 with minecraft:air

loot spawn ~ ~ ~ loot mechanization:gadgets/tinker_table
function mechanization:base/utils/break_copy_data
function mechanization:base/utils/break_drop_inv

function energy:v1/api/break_machine
setblock ~ ~ ~ minecraft:air replace
kill @s
