#Centrifuge
execute if entity @s[tag=mech_centrifuge] run loot spawn ~ ~ ~ loot mechanization:nuclear/centrifuge
execute if entity @s[tag=mech_centrifuge] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_centrifuge]
kill @s[tag=mech_centrifuge_model]

#Fission Reactor
execute if entity @s[tag=mech_fission_reactor] run loot spawn ~ ~ ~ loot mechanization:nuclear/fission_reactor
execute if entity @s[tag=mech_fission_reactor] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_fission_reactor]

#turbine
execute if entity @s[tag=mech_turbine] run loot spawn ~ ~ ~ loot mechanization:nuclear/steam_turbine
execute if entity @s[tag=mech_turbine] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_turbine]
kill @s[tag=mech_turbine_model]

#Temp Observer
execute if entity @s[tag=mech_temp_observer] run loot spawn ~ ~ ~ loot mechanization:nuclear/temperature_observer
execute if entity @s[tag=mech_temp_observer] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_temp_observer]

#Rate Observer
execute if entity @s[tag=mech_rate_observer] run loot spawn ~ ~ ~ loot mechanization:nuclear/reaction_rate_observer
execute if entity @s[tag=mech_rate_observer] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_rate_observer]

#Control Rod
execute if entity @s[tag=mech_control_rod] run loot spawn ~ ~ ~ loot mechanization:nuclear/control_rod
execute if entity @s[tag=mech_control_rod] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_control_rod]

