
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:bell[facing=south] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:bell[facing=west]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:bell[facing=west] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:bell[facing=north]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:bell[facing=north] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:bell[facing=east]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:bell[facing=east] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:bell[facing=south]
