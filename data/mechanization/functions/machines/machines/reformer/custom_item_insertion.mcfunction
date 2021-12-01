
scoreboard players set $out_0 mechanization.data 1
scoreboard players set $out_1 mechanization.data -1

function mechanization:base/utils/is_fluid_container
execute if score $temp_0 mechanization.data matches 1 unless data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players set $out_1 mechanization.data 1

execute if score $temp_0 mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players set $out_1 mechanization.data 3
