
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:stonecutter[facing=south] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:stonecutter[facing=west]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:stonecutter[facing=west] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:stonecutter[facing=north]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:stonecutter[facing=north] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:stonecutter[facing=east]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:stonecutter[facing=east] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:stonecutter[facing=south]
