data merge storage du:temp {list:[]}
data modify storage du:temp list set from block ~ ~ ~ Items

execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:smoker[facing=south] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:smoker[facing=west]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:smoker[facing=west] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:smoker[facing=north]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:smoker[facing=north] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:smoker[facing=east]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:smoker[facing=east] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:smoker[facing=south]

data modify block ~ ~ ~ Items set from storage du:temp list