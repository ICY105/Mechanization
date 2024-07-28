
scoreboard players set #slot mechanization.data -1
data modify storage mechanization:temp obj set from storage mechanization:temp list[0]

# check for available item slots
execute if score #slot mechanization.data matches -1 unless data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players set #slot mechanization.data 0
execute if score #slot mechanization.data matches -1 unless data block ~ ~ ~ Items[{Slot:9b}] run scoreboard players set #slot mechanization.data 9
execute if score #slot mechanization.data matches -1 unless data block ~ ~ ~ Items[{Slot:18b}] run scoreboard players set #slot mechanization.data 18

execute if score #slot mechanization.data matches -1 unless data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players set #slot mechanization.data 1
execute if score #slot mechanization.data matches -1 unless data block ~ ~ ~ Items[{Slot:4b}] run scoreboard players set #slot mechanization.data 4
execute if score #slot mechanization.data matches -1 unless data block ~ ~ ~ Items[{Slot:7b}] run scoreboard players set #slot mechanization.data 7

# move item
execute if score #slot mechanization.data matches -1 run data modify block -30000000 0 3201 Items append from storage mechanization:temp list[0]
execute if score #slot mechanization.data matches 0.. store result storage mechanization:temp list[0].Slot byte 1 run scoreboard players get #slot mechanization.data
execute if score #slot mechanization.data matches 0.. run data modify block ~ ~ ~ Items append from storage mechanization:temp list[0]

# cycle
data remove storage mechanization:temp list[0]
execute if data storage mechanization:temp list[0] run function mechanization:nuclear/blocks/centrifuge/gui_move
