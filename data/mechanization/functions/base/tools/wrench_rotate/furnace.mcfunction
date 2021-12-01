data merge storage du:temp {list:[]}
data modify storage du:temp list set from block ~ ~ ~ Items

execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:furnace[facing=south] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:furnace[facing=west]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:furnace[facing=west] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:furnace[facing=north]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:furnace[facing=north] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:furnace[facing=east]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:furnace[facing=east] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:furnace[facing=south]

data modify block ~ ~ ~ Items set from storage du:temp list