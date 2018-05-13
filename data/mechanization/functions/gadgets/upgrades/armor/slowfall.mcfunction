scoreboard players set in_0 mech_data 8
function mechanization:base/tools/player_energy/use_energy

execute if score out_0 mech_data matches 1 run effect give @s minecraft:levitation 1 250 true
execute if score out_0 mech_data matches 1 run effect give @s minecraft:jump_boost 1 255 true
