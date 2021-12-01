
scoreboard players operation $in_0 mechanization.data = $gadgets.cf.slow_fall_power mech_data
execute if block ~ ~-1 ~ #du:air if block ~ ~-2 ~ #du:air if block ~ ~-3 ~ #du:air run function mechanization:base/energy/player_energy
execute if block ~ ~-1 ~ #du:air if block ~ ~-2 ~ #du:air if block ~ ~-3 ~ #du:air if score $out_0 mechanization.data matches 1 run effect give @s minecraft:slow_falling 1 0 true
