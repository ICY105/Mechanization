
data merge storage nbt_smelting:io {list:[]}
data modify storage nbt_smelting:io list set from block ~ ~ ~ Items

execute if block ~ ~ ~ minecraft:furnace[facing=north] run setblock ~ ~ ~ minecraft:furnace[facing=north,lit=true]
execute if block ~ ~ ~ minecraft:furnace[facing=south] run setblock ~ ~ ~ minecraft:furnace[facing=south,lit=true]
execute if block ~ ~ ~ minecraft:furnace[facing=east] run setblock ~ ~ ~ minecraft:furnace[facing=east,lit=true]
execute if block ~ ~ ~ minecraft:furnace[facing=west] run setblock ~ ~ ~ minecraft:furnace[facing=west,lit=true]

execute if block ~ ~ ~ minecraft:blast_furnace[facing=north] run setblock ~ ~ ~ minecraft:blast_furnace[facing=north,lit=true]
execute if block ~ ~ ~ minecraft:blast_furnace[facing=south] run setblock ~ ~ ~ minecraft:blast_furnace[facing=south,lit=true]
execute if block ~ ~ ~ minecraft:blast_furnace[facing=east] run setblock ~ ~ ~ minecraft:blast_furnace[facing=east,lit=true]
execute if block ~ ~ ~ minecraft:blast_furnace[facing=west] run setblock ~ ~ ~ minecraft:blast_furnace[facing=west,lit=true]

execute if block ~ ~ ~ minecraft:smoker[facing=north] run setblock ~ ~ ~ minecraft:smoker[facing=north,lit=true]
execute if block ~ ~ ~ minecraft:smoker[facing=south] run setblock ~ ~ ~ minecraft:smoker[facing=south,lit=true]
execute if block ~ ~ ~ minecraft:smoker[facing=east] run setblock ~ ~ ~ minecraft:smoker[facing=east,lit=true]
execute if block ~ ~ ~ minecraft:smoker[facing=west] run setblock ~ ~ ~ minecraft:smoker[facing=west,lit=true]

data modify block ~ ~ ~ Items set from storage nbt_smelting:io list
