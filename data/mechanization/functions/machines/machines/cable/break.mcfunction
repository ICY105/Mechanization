
execute if entity @s[tag=mechanization.cable.copper] run loot spawn ~ ~ ~ loot mechanization:machines/copper_cable
execute if entity @s[tag=mechanization.cable.conductive] run loot spawn ~ ~ ~ loot mechanization:machines/conductive_cable
execute if entity @s[tag=mechanization.cable.super_conductive] run loot spawn ~ ~ ~ loot mechanization:machines/super_conductive_cable

setblock ~ ~ ~ minecraft:air replace
function energy:v1/api/break_cable
kill @s
