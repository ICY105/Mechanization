data merge storage du:temp {list:[]}
data modify storage du:temp list set from block ~ ~ ~ Items

execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:barrel[facing=south] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:barrel[facing=west]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:barrel[facing=west] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:barrel[facing=north]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:barrel[facing=north] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:barrel[facing=east]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:barrel[facing=east] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:barrel[facing=up]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:barrel[facing=up] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:barrel[facing=down]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:barrel[facing=down] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:barrel[facing=south]

data modify block ~ ~ ~ Items set from storage du:temp list