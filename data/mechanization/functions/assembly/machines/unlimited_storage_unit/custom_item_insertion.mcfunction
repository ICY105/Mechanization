
scoreboard players set #allowed mechanization.data 1
scoreboard players set #slot mechanization.data -1

execute unless data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players set #slot mechanization.data 0
