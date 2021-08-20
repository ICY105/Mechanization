
scoreboard players set $temp_0 mech_data 0
data modify storage du:temp obj set from storage du:temp list[0]

#check for empty fluid IO slots
execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players set $temp_0 mech_data 1
execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:6b}] run scoreboard players set $temp_0 mech_data 6

#move item
execute if score $temp_0 mech_data matches 0 run data modify block -29999999 0 1601 Items append from storage du:temp list[0]
execute if score $temp_0 mech_data matches 1.. store result storage du:temp list[0].Slot byte 1 run scoreboard players get $temp_0 mech_data
data modify storage du:temp obj set from storage du:temp list[0]
execute if score $temp_0 mech_data matches 1.. run data modify block ~ ~ ~ Items append from storage du:temp list[0]

#cycle
data remove storage du:temp list[0]
execute if data storage du:temp list[0] run function mechanization:machines/machines/thermoelectric_generator/gui_move
