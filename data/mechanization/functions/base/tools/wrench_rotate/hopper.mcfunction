data modify block -29999999 0 1600 RecordItem.tag.mech.temp set value {}
data modify block -29999999 0 1600 RecordItem.tag.mech.temp set from block ~ ~ ~ Items

execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:hopper[facing=down] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:hopper[facing=north]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:hopper[facing=north] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:hopper[facing=east]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:hopper[facing=east] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:hopper[facing=south]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:hopper[facing=south] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:hopper[facing=west]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:hopper[facing=west] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:hopper[facing=down]

data modify block ~ ~ ~ Items set from block -29999999 0 1600 RecordItem.tag.mech.temp