scoreboard players operation temp_0 mech_data = @s mech_gridid
execute if entity @s[tag=!du_sneaking] unless block ~ ~ ~ #du:air align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.5] at @s run function #mechanization:multimeter_readout
execute if entity @s[tag=du_sneaking] unless block ~ ~ ~ #du:air align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.5] at @s run function mechanization:base/tools/multimeter_idlock
scoreboard players set in_0 mech_data 0