
scoreboard players set #allowed mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:3b}] run data modify storage mechanization:temp list append from block ~ ~ ~ Items[{Slot:3b}]
execute if data block ~ ~ ~ Items[{Slot:7b}] run data modify storage mechanization:temp list append from block ~ ~ ~ Items[{Slot:7b}]
