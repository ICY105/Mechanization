execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:end_rod[facing=up] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:end_rod[facing=down]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:end_rod[facing=down] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:end_rod[facing=north]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:end_rod[facing=north] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:end_rod[facing=east]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:end_rod[facing=east] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:end_rod[facing=south]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:end_rod[facing=south] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:end_rod[facing=west]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:end_rod[facing=west] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:end_rod[facing=up]