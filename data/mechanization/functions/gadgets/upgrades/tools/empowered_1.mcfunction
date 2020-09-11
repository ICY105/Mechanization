scoreboard players set in_0 mech_data 20
execute if score $base.timer_100 du_data matches 0..19 run function mechanization:base/energy/player_energy
execute if score out_0 mech_data matches 1 run effect give @s haste 2 0 true
