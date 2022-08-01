data merge storage mechanization:temp {list:[]}
data modify storage mechanization:temp list set from block ~ ~ ~ Bees

execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:beehive[facing=south] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:beehive[facing=west]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:beehive[facing=west] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:beehive[facing=north]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:beehive[facing=north] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:beehive[facing=east]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:beehive[facing=east] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:beehive[facing=south]

data modify block ~ ~ ~ Bees set from storage mechanization:temp list
