scoreboard players set in_0 mech_data 4
function mechanization:base/energy/player_energy
execute if score out_0 mech_data matches 1 run effect give @s haste 2 0 true
