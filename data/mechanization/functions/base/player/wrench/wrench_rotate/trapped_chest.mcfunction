data merge storage du:temp {list:[]}
data modify storage du:temp list set from block ~ ~ ~ Items

execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:trapped_chest[facing=south] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:trapped_chest[facing=west]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:trapped_chest[facing=west] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:trapped_chest[facing=north]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:trapped_chest[facing=north] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:trapped_chest[facing=east]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:trapped_chest[facing=east] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:trapped_chest[facing=south]

data modify block ~ ~ ~ Items set from storage du:temp list