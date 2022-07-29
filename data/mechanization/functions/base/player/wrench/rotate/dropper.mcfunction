data merge storage mechanization:temp {list:[]}
data modify storage mechanization:temp list set from block ~ ~ ~ Items

execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dropper[facing=up] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:dropper[facing=down]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dropper[facing=down] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:dropper[facing=north]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dropper[facing=north] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:dropper[facing=east]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dropper[facing=east] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:dropper[facing=south]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dropper[facing=south] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:dropper[facing=west]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dropper[facing=west] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:dropper[facing=up]

data modify block ~ ~ ~ Items set from storage mechanization:temp list