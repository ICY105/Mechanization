data merge storage du:temp {list:[]}
data modify storage du:temp list set from block ~ ~ ~ Items

execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dispenser[facing=up] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:dispenser[facing=down]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dispenser[facing=down] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:dispenser[facing=north]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dispenser[facing=north] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:dispenser[facing=east]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dispenser[facing=east] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:dispenser[facing=south]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dispenser[facing=south] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:dispenser[facing=west]
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dispenser[facing=west] store success score #success mechanization.data run setblock ~ ~ ~ minecraft:dispenser[facing=up]

data modify block ~ ~ ~ Items set from storage du:temp list