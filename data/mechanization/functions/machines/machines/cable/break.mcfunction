
execute if entity @s[tag=mechanization.copper] run loot spawn ~ ~ ~ loot mechanization:base/copper_cable
execute if entity @s[tag=mechanization.conductive] run loot spawn ~ ~ ~ loot mechanization:base/conductive_cable
execute if entity @s[tag=mechanization.super_conductive] run loot spawn ~ ~ ~ loot mechanization:base/super_conductive_cable

setblock ~ ~ ~ minecraft:air replace
function energy:v1/api/break_cable
kill @s
