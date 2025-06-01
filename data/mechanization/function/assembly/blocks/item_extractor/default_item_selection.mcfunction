
scoreboard players set #allowed mechanization.data 1

data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{components:{"minecraft:custom_data":{mechanization:{gui_item:1b}}}}]
data remove storage mechanization:temp list[{components:{"minecraft:custom_data":{simplenergy:{texture_item:1b}}}}]

# furnace-like removal
execute if block ~ ~ ~ #mechanization:furnace-like run data remove storage mechanization:temp list[{Slot:0b}]
execute if block ~ ~ ~ #mechanization:furnace-like unless data storage mechanization:temp list[{Slot:1b,id:"minecraft:bucket"}] run data remove storage mechanization:temp list[{Slot:1b}]

# brewing stand removal
execute if block ~ ~ ~ minecraft:brewing_stand run data remove storage mechanization:temp list[{Slot:3b}]
execute if block ~ ~ ~ minecraft:brewing_stand run data remove storage mechanization:temp list[{Slot:4b}]

# camp fire removal
execute if block ~ ~ ~ #minecraft:campfires run data modify storage mechanization:temp list set value []
