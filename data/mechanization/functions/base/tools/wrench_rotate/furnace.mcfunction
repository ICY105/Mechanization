data modify block -29999999 0 1600 RecordItem.tag.mech.temp set value {}
data modify block -29999999 0 1600 RecordItem.tag.mech.temp set from block ~ ~ ~ Items

execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:furnace[facing=south] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:furnace[facing=west]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:furnace[facing=west] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:furnace[facing=north]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:furnace[facing=north] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:furnace[facing=east]
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:furnace[facing=east] store success score in_0 mech_data run setblock ~ ~ ~ minecraft:furnace[facing=south]

data modify block ~ ~ ~ Items set from block -29999999 0 1600 RecordItem.tag.mech.temp