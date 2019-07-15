execute store result score temp_0 mech_data run data get entity @s AbsorptionAmount


scoreboard players set in_0 mech_data 32
execute if score temp_0 mech_data matches ..3 run scoreboard players set in_0 mech_data 512
function mechanization:base/energy/player_energy
execute if score out_0 mech_data matches 1 run effect give @s absorption 60 0 true
