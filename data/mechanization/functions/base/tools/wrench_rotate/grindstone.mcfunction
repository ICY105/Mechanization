
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:grindstone[face=floor,facing=south] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:grindstone[face=floor,facing=east]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:grindstone[face=floor,facing=north] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:grindstone[face=floor,facing=east]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:grindstone[face=floor,facing=west] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:grindstone[face=wall,facing=south]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:grindstone[face=floor,facing=east] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:grindstone[face=wall,facing=south]

execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:grindstone[face=wall,facing=south] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:grindstone[face=wall,facing=west]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:grindstone[face=wall,facing=west] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:grindstone[face=wall,facing=north]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:grindstone[face=wall,facing=north] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:grindstone[face=wall,facing=east]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:grindstone[face=wall,facing=east] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:grindstone[face=ceiling,facing=south]

execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:grindstone[face=ceiling,facing=south] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:grindstone[face=ceiling,facing=east]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:grindstone[face=ceiling,facing=north] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:grindstone[face=ceiling,facing=east]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:grindstone[face=ceiling,facing=west] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:grindstone[face=floor,facing=south]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:grindstone[face=ceiling,facing=east] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:grindstone[face=floor,facing=south]
