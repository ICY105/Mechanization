
scoreboard players set #allowed mechanization.data 1

execute if items block ~ ~ ~ container.19 * run data modify storage mechanization:temp list append from block ~ ~ ~ Items[{Slot:19b}]
execute if items block ~ ~ ~ container.24 * run data modify storage mechanization:temp list append from block ~ ~ ~ Items[{Slot:24b}]
