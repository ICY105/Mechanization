
function mechanization:base/utils/break_drop_inv

loot spawn ~ ~ ~ loot mechanization:assembly/ender_hopper

setblock ~ ~ ~ minecraft:air replace
kill @s
