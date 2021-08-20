
scoreboard players set $temp_0 mech_data 0
execute if score $temp_0 mech_data matches 0 unless block ~ ~ ~ #du:non-solid unless block ~ ~1 ~ #du:non-solid run scoreboard players set $temp_0 mech_data 2
execute if score $temp_0 mech_data matches 0 rotated ~ 0 unless block ^ ^0.5 ^0.5 #du:non-solid unless block ^ ^1.5 ^0.5 #du:non-solid run scoreboard players set $temp_0 mech_data 1
execute if score $temp_0 mech_data matches 1 rotated ~ 0 if block ^ ^0.5 ^1.5 #du:air if block ^ ^1.5 ^1.5 #du:air run scoreboard players set $temp_0 mech_data 2
execute if score $temp_0 mech_data matches 1 rotated ~ 0 if block ^ ^0.5 ^2.5 #du:air if block ^ ^1.5 ^2.5 #du:air run scoreboard players set $temp_0 mech_data 2
execute if score $temp_0 mech_data matches 1 rotated ~ 0 if block ^ ^0.5 ^3.5 #du:air if block ^ ^1.5 ^3.5 #du:air run scoreboard players set $temp_0 mech_data 2
execute if score $temp_0 mech_data matches 1 rotated ~ 0 if block ^ ^0.5 ^4.5 #du:air if block ^ ^1.5 ^4.5 #du:air run scoreboard players set $temp_0 mech_data 2

execute if score $temp_0 mech_data matches 2 run scoreboard players set in_0 mech_data 128
execute if score $temp_0 mech_data matches 2 run function mechanization:base/energy/player_energy
execute if score $temp_0 mech_data matches 2 if score out_0 mech_data matches 1 rotated ~ 0 run tp @s ^ ^ ^0.5