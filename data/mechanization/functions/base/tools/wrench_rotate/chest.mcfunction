data modify block -29999999 0 1600 RecordItem.tag.mech.temp set value {}
data modify block -29999999 0 1600 RecordItem.tag.mech.temp set from block ~ ~ ~ Items

execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:chest[type=single,facing=south] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:chest[facing=west]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:chest[type=single,facing=west] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:chest[facing=north]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:chest[type=single,facing=north] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:chest[facing=east]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:chest[type=single,facing=east] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:chest[facing=south]

data modify block ~ ~ ~ Items set from block -29999999 0 1600 RecordItem.tag.mech.temp