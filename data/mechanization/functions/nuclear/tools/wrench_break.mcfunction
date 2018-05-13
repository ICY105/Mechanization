#Centrifuge
execute as @e[tag=mech_centrifuge,distance=..0.5] run function give:mech_nuclear/centrifuge
execute as @e[tag=mech_centrifuge,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_centrifuge,distance=..0.5]
kill @e[tag=mech_centrifuge_model,distance=..0.5]

#Fission Reactor
execute as @e[tag=mech_fission_reactor,distance=..0.5] run function give:mech_nuclear/fission_reactor
execute as @e[tag=mech_fission_reactor,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_fission_reactor,distance=..0.5]

#turbine
execute as @e[tag=mech_turbine,distance=..0.5] run function give:mech_nuclear/steam_turbine
execute as @e[tag=mech_turbine,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_turbine,distance=..0.5]
kill @e[tag=mech_turbine_model,distance=..0.5]

#Temp Observer
execute as @e[tag=mech_temp_observer,distance=..0.5] run function give:mech_nuclear/temperature_oberserver
execute as @e[tag=mech_temp_observer,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_temp_observer,distance=..0.5]

#Rate Observer
execute as @e[tag=mech_rate_observer,distance=..0.5] run function give:mech_nuclear/reaction_rate_observer
execute as @e[tag=mech_rate_observer,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_rate_observer,distance=..0.5]

#Control Rod
execute as @e[tag=mech_control_rod,distance=..0.5] run function give:mech_nuclear/control_rod
execute as @e[tag=mech_control_rod,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_control_rod,distance=..0.5]

