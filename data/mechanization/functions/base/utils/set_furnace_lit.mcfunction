
data remove block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items set from block ~ ~ ~ Items

execute if block ~ ~ ~ furnace[facing=north] run setblock ~ ~ ~ furnace[facing=north,lit=true]
execute if block ~ ~ ~ furnace[facing=south] run setblock ~ ~ ~ furnace[facing=south,lit=true]
execute if block ~ ~ ~ furnace[facing=east] run setblock ~ ~ ~ furnace[facing=east,lit=true]
execute if block ~ ~ ~ furnace[facing=west] run setblock ~ ~ ~ furnace[facing=west,lit=true]

data modify block ~ ~ ~ Items set from block -29999999 0 1601 Items