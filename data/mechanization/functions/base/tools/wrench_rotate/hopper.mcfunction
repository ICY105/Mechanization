data merge storage du:temp {list:[]}
data modify storage du:temp list set from block ~ ~ ~ Items

execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:hopper[facing=down] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:hopper[facing=north]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:hopper[facing=north] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:hopper[facing=east]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:hopper[facing=east] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:hopper[facing=south]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:hopper[facing=south] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:hopper[facing=west]
execute if score in_0 mechanization.data matches 0 if block ~ ~ ~ minecraft:hopper[facing=west] store success score in_0 mechanization.data run setblock ~ ~ ~ minecraft:hopper[facing=down]

data modify block ~ ~ ~ Items set from storage du:temp list