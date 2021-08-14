
scoreboard players set in_0 mech_data 4
execute if block ~ ~-1 ~ #du:air if block ~ ~-2 ~ #du:air if block ~ ~-3 ~ #du:air run function mechanization:base/energy/player_energy
execute if block ~ ~-1 ~ #du:air if block ~ ~-2 ~ #du:air if block ~ ~-3 ~ #du:air if score out_0 mech_data matches 1 run effect give @s minecraft:slow_falling 1 0 true
