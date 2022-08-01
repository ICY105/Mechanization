
scoreboard players set #allowed mechanization.data 1
scoreboard players set #slot mechanization.data -1


execute if data storage mechanization:temp obj{id:"minecraft:glass_bottle"} unless data block ~ ~ ~ Items[{Slot:21b}] run scoreboard players set #slot mechanization.data 21
execute if data storage mechanization:temp obj{id:"minecraft:paper"} unless data block ~ ~ ~ Items[{Slot:21b}] run scoreboard players set #slot mechanization.data 21

execute unless data storage mechanization:temp obj{id:"minecraft:glass_bottle"} unless data storage mechanization:temp obj{id:"minecraft:paper"} unless data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players set #slot mechanization.data 3
