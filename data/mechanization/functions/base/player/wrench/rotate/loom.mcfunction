
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:loom[facing=south] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:loom[facing=west]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:loom[facing=west] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:loom[facing=north]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:loom[facing=north] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:loom[facing=east]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:loom[facing=east] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:loom[facing=south]
