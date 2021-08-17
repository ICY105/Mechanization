
scoreboard players set $temp_0 mech_data 0
function mechanization:assembly/machines/item_inserter/is_item_furnace_fuel

execute if score $temp_0 mech_data matches 0 unless data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players set $out_1 mech_data 0
execute if score $temp_0 mech_data matches 1 unless data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players set $out_1 mech_data 1
