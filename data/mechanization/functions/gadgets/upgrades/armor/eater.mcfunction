execute store result score temp_4 mech_data run data get entity @s foodLevel

execute if score temp_4 mech_data matches ..10 run scoreboard players set in_0 mech_data 16
execute if score temp_4 mech_data matches ..10 run function mechanization:base/tools/player_energy/use_energy
execute if score temp_4 mech_data matches ..10 if score out_0 mech_data matches 1 run function mechanization:gadgets/upgrades/armor/eater_2
