
scoreboard players set #slot mechanization.data 0
data modify storage mechanization:temp obj set from storage mechanization:temp list[0]

#check for empty fluid IO slots
execute if score #slot mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players set #slot mechanization.data 1
execute if score #slot mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:6b}] run scoreboard players set #slot mechanization.data 6

#move item
execute if score #slot mechanization.data matches 0 run data modify block -30000000 0 3201 Items append from storage mechanization:temp list[0]
execute if score #slot mechanization.data matches 1.. store result storage mechanization:temp list[0].Slot byte 1 run scoreboard players get #slot mechanization.data
data modify storage mechanization:temp obj set from storage mechanization:temp list[0]
execute if score #slot mechanization.data matches 1.. run data modify block ~ ~ ~ Items append from storage mechanization:temp list[0]

#cycle
data remove storage mechanization:temp list[0]
execute if data storage mechanization:temp list[0] run function mechanization:machines/machines/thermoelectric_generator/gui_move
