
data modify storage du:temp list set from block ~ ~ ~ Items
data remove storage du:temp list[{tag:{du_gui:1b}}]

#furnace-like removal
execute if block ~ ~ ~ #du:internal/furnace-like run data remove storage du:temp list[{Slot:0b}]
execute if block ~ ~ ~ #du:internal/furnace-like unless data storage du:temp list[{Slot:1b,id:"minecraft:bucket"}] run data remove storage du:temp list[{Slot:1b}]

#brewing stand removal
execute if block ~ ~ ~ minecraft:brewing_stand run data remove storage du:temp list[{Slot:4b}]

#camp fire removal
execute if block ~ ~ ~ #minecraft:camp_fires run data modify storage du:temp list set value []
