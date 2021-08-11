scoreboard players set in_0 mech_data 8
execute if score $base.timer_20 du_data matches 11 run function mechanization:base/energy/player_energy

execute if score out_0 mech_data matches 1 run effect give @s minecraft:slow_falling 1 0 true
