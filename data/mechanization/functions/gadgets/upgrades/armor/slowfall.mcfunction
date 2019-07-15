scoreboard players set in_0 mech_data 8
function mechanization:base/energy/player_energy

execute if score out_0 mech_data matches 1 run effect give @s minecraft:slow_falling 1 0 true
