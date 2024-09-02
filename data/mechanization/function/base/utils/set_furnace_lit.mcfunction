
data modify storage mechanization:temp list set from block ~ ~ ~ Items

execute if block ~ ~ ~ minecraft:furnace[facing=north] run setblock ~ ~ ~ minecraft:furnace[facing=north,lit=true]
execute if block ~ ~ ~ minecraft:furnace[facing=south] run setblock ~ ~ ~ minecraft:furnace[facing=south,lit=true]
execute if block ~ ~ ~ minecraft:furnace[facing=east] run setblock ~ ~ ~ minecraft:furnace[facing=east,lit=true]
execute if block ~ ~ ~ minecraft:furnace[facing=west] run setblock ~ ~ ~ minecraft:furnace[facing=west,lit=true]

data modify block ~ ~ ~ Items set from storage mechanization:temp list