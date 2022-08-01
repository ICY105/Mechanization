
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:deepslate[axis=x] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:deepslate[axis=y]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:deepslate[axis=y] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:deepslate[axis=z]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:deepslate[axis=z] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:deepslate[axis=x]
