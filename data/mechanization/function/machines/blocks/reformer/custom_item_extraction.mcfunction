
scoreboard players set #allowed mechanization.data 1
execute if items block ~ ~ ~ container.3 * run data modify storage mechanization:temp list append from block ~ ~ ~ Items[{Slot:3b}]
execute if items block ~ ~ ~ container.7 * run data modify storage mechanization:temp list append from block ~ ~ ~ Items[{Slot:7b}]
