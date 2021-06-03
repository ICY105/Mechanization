
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:deepslate[axis=x] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:deepslate[axis=y]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:deepslate[axis=y] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:deepslate[axis=z]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:deepslate[axis=z] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:deepslate[axis=x]
