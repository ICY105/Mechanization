data merge storage du:temp {list:[]}
data modify storage du:temp list set from block ~ ~ ~ Bees

execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:bee_nest[facing=south] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:bee_nest[facing=west]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:bee_nest[facing=west] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:bee_nest[facing=north]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:bee_nest[facing=north] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:bee_nest[facing=east]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:bee_nest[facing=east] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:bee_nest[facing=south]

data modify block ~ ~ ~ Bees set from storage du:temp list