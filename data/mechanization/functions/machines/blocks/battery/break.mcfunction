
execute if entity @s[tag=mechanization.battery.t1] run loot spawn ~ ~ ~ loot mechanization:machines/tier_1_battery
execute if entity @s[tag=mechanization.battery.t2] run loot spawn ~ ~ ~ loot mechanization:machines/tier_2_battery
execute if entity @s[tag=mechanization.battery.t3] run loot spawn ~ ~ ~ loot mechanization:machines/tier_3_battery
#execute if entity @s[tag=mechanization.battery.quantum] run loot spawn ~ ~ ~ loot mechanization:machines/quantum_battery
function mechanization:base/utils/break_copy_data

execute if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air replace
function energy:v1/api/break_machine
kill @s

