
scoreboard players set $out_0 mech_data 1
scoreboard players set $out_1 mech_data -1

execute unless data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players set $out_1 mech_data 0
