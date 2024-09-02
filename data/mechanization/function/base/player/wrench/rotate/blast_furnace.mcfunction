data merge storage mechanization:temp {list:[]}
data modify storage mechanization:temp list set from block ~ ~ ~ Items

execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:blast_furnace[facing=south] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:blast_furnace[facing=west]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:blast_furnace[facing=west] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:blast_furnace[facing=north]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:blast_furnace[facing=north] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:blast_furnace[facing=east]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:blast_furnace[facing=east] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:blast_furnace[facing=south]

data modify block ~ ~ ~ Items set from storage mechanization:temp list