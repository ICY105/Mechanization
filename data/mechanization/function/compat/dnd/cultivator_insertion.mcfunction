
scoreboard players set #allowed mechanization.data 1
scoreboard players set #slot mechanization.data -1

execute if data storage mechanization:temp obj.tag.dnd{id:"dna_vial"} unless data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players set #slot mechanization.data 3
execute if data storage mechanization:temp obj.tag.dnd{id:"chicken_extract"} unless data block ~ ~ ~ Items[{Slot:21b}] run scoreboard players set #slot mechanization.data 21
