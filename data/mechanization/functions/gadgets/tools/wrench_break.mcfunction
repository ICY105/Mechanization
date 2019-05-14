
#Charging Station
execute if entity @s[tag=mech_charging_station] run loot spawn ~ ~ ~ loot mechanization:gadgets/charging_station
execute if entity @s[tag=mech_charging_station] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_charging_station]

#Tinker Table
execute if entity @s[tag=mech_tinker_table] run loot spawn ~ ~ ~ loot mechanization:gadgets/tinker_table
execute if entity @s[tag=mech_tinker_table] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_tinker_table]

#xp tank
execute if entity @s[tag=mech_xp_tank] run loot spawn ~ ~ ~ loot mechanization:gadgets/xp_tank
execute if entity @s[tag=mech_xp_tank] store result entity @e[type=item,sort=nearest,limit=1] Item.tag.mech_xp int 1 run scoreboard players get @s mech_data
execute if entity @s[tag=mech_xp_tank] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_xp_tank]

