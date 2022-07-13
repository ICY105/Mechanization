
# Charging Station
execute if entity @s[tag=mechanization.charging_station] run loot spawn ~ ~ ~ loot mechanization:gadgets/charging_station
execute if entity @s[tag=mechanization.charging_station] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.charging_station]

# Tinker Table
execute if entity @s[tag=mechanization.tinker_table] run loot spawn ~ ~ ~ loot mechanization:gadgets/tinker_table
execute if entity @s[tag=mechanization.tinker_table] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.tinker_table]

