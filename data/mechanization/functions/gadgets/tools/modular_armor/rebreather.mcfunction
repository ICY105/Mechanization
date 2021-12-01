
scoreboard players operation $in_0 mechanization.data = $gadgets.cf.rebreather_power mech_data
execute if block ~ ~1 ~ #mechanization:water run function mechanization:base/energy/player_energy
execute if block ~ ~1 ~ #mechanization:water if score $out_0 mechanization.data matches 1 run effect give @s minecraft:water_breathing 2 0 true
