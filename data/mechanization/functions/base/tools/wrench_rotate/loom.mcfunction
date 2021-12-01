
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:loom[facing=south] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:loom[facing=west]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:loom[facing=west] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:loom[facing=north]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:loom[facing=north] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:loom[facing=east]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:loom[facing=east] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:loom[facing=south]
