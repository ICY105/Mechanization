
scoreboard players operation $in_0 mechanization.data = $gadgets.cf.vision_power mech_data
function mechanization:base/energy/player_energy
execute if score $out_0 mechanization.data matches 1 run effect give @s minecraft:night_vision 15 0 true
