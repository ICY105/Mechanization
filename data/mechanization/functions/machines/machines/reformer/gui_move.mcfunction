
scoreboard players set $temp_0 mech_data -1
data modify storage du:temp obj set from storage du:temp list[0]

#check for fuel & empty fuel slot
execute if score $temp_0 mech_data matches -1 unless data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players set $temp_0 mech_data 3
execute if score $temp_0 mech_data matches -1 unless data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players set $temp_0 mech_data 1

#move item
execute if score $temp_0 mech_data matches -1 run data modify block -29999999 0 1601 Items append from storage du:temp list[0]
execute if score $temp_0 mech_data matches 0.. store result storage du:temp list[0].Slot byte 1 run scoreboard players get $temp_0 mech_data
data modify storage du:temp obj set from storage du:temp list[0]
execute if score $temp_0 mech_data matches 0.. run data modify block ~ ~ ~ Items append from storage du:temp list[0]

#cycle
data remove storage du:temp list[0]
execute if data storage du:temp list[0] run function mechanization:machines/machines/reformer/gui_move
