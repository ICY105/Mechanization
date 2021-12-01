
execute unless data storage du:temp obj{id:"minecraft:potion"} unless data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players set $out_1 mechanization.data 3
execute if data storage du:temp obj{id:"minecraft:potion"} unless data block ~ ~ ~ Items[{Slot:2b}] run scoreboard players set $out_1 mechanization.data 2
execute if data storage du:temp obj{id:"minecraft:potion"} unless data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players set $out_1 mechanization.data 1
execute if data storage du:temp obj{id:"minecraft:potion"} unless data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players set $out_1 mechanization.data 0
execute if data storage du:temp obj{id:"minecraft:blaze_powder"} unless data block ~ ~ ~ Items[{Slot:4b}] run scoreboard players set $out_1 mechanization.data 4
