
scoreboard players set $out_0 mech_data 1
scoreboard players set $out_1 mech_data -1

function mechanization:base/utils/is_fluid_container
execute if score $temp_0 mech_data matches 1 unless data block ~ ~ ~ Items[{Slot:7b}] run scoreboard players set $out_1 mech_data 7
execute if score $temp_0 mech_data matches 1 unless data block ~ ~ ~ Items[{Slot:4b}] run scoreboard players set $out_1 mech_data 4
execute if score $temp_0 mech_data matches 1 unless data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players set $out_1 mech_data 1

execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:18b}] run scoreboard players set $out_1 mech_data 18
execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:9b}] run scoreboard players set $out_1 mech_data 9
execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players set $out_1 mech_data 0
