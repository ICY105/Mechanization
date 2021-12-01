data merge storage du:temp {list:[]}
data modify storage du:temp list set from block ~ ~ ~ Bees

execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:beehive[facing=south] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:beehive[facing=west]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:beehive[facing=west] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:beehive[facing=north]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:beehive[facing=north] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:beehive[facing=east]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:beehive[facing=east] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:beehive[facing=south]

data modify block ~ ~ ~ Bees set from storage du:temp list
