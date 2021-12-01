
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:stonecutter[facing=south] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:stonecutter[facing=west]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:stonecutter[facing=west] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:stonecutter[facing=north]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:stonecutter[facing=north] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:stonecutter[facing=east]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:stonecutter[facing=east] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:stonecutter[facing=south]
