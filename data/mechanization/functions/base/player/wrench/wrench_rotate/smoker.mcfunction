data merge storage du:temp {list:[]}
data modify storage du:temp list set from block ~ ~ ~ Items

execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:smoker[facing=south] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:smoker[facing=west]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:smoker[facing=west] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:smoker[facing=north]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:smoker[facing=north] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:smoker[facing=east]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:smoker[facing=east] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:smoker[facing=south]

data modify block ~ ~ ~ Items set from storage du:temp list