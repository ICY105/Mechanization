
execute unless data storage mechanization:temp obj{id:"minecraft:potion"} unless data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players set #slot mechanization.data 3
execute if data storage mechanization:temp obj{id:"minecraft:potion"} unless data block ~ ~ ~ Items[{Slot:2b}] run scoreboard players set #slot mechanization.data 2
execute if data storage mechanization:temp obj{id:"minecraft:potion"} unless data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players set #slot mechanization.data 1
execute if data storage mechanization:temp obj{id:"minecraft:potion"} unless data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players set #slot mechanization.data 0
execute if data storage mechanization:temp obj{id:"minecraft:blaze_powder"} unless data block ~ ~ ~ Items[{Slot:4b}] run scoreboard players set #slot mechanization.data 4
