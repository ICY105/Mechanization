execute store success score temp_0 mech_data run effect clear @s wither
execute if score temp_0 mech_data matches 1 run scoreboard players set in_0 mech_data 256
execute if score temp_0 mech_data matches 1 run function mechanization:base/tools/player_energy/use_energy

execute store success score temp_0 mech_data run effect clear @s weakness
execute if score temp_0 mech_data matches 1 run scoreboard players set in_0 mech_data 128
execute if score temp_0 mech_data matches 1 run function mechanization:base/tools/player_energy/use_energy

execute store success score temp_0 mech_data run effect clear @s slowness
execute if score temp_0 mech_data matches 1 run scoreboard players set in_0 mech_data 128
execute if score temp_0 mech_data matches 1 run function mechanization:base/tools/player_energy/use_energy

execute store success score temp_0 mech_data run effect clear @s poison
execute if score temp_0 mech_data matches 1 run scoreboard players set in_0 mech_data 128
execute if score temp_0 mech_data matches 1 run function mechanization:base/tools/player_energy/use_energy

execute store success score temp_0 mech_data run effect clear @s blindness
execute if score temp_0 mech_data matches 1 run scoreboard players set in_0 mech_data 128
execute if score temp_0 mech_data matches 1 run function mechanization:base/tools/player_energy/use_energy

execute store success score temp_0 mech_data run effect clear @s hunger
execute if score temp_0 mech_data matches 1 run scoreboard players set in_0 mech_data 64
execute if score temp_0 mech_data matches 1 run function mechanization:base/tools/player_energy/use_energy

execute store success score temp_0 mech_data run effect clear @s mining_fatigue
execute if score temp_0 mech_data matches 1 run scoreboard players set in_0 mech_data 256
execute if score temp_0 mech_data matches 1 run function mechanization:base/tools/player_energy/use_energy

execute store success score temp_0 mech_data run effect clear @s nausea
execute if score temp_0 mech_data matches 1 run scoreboard players set in_0 mech_data 256
execute if score temp_0 mech_data matches 1 run function mechanization:base/tools/player_energy/use_energy

execute store success score temp_0 mech_data run effect clear @s unluck
execute if score temp_0 mech_data matches 1 run scoreboard players set in_0 mech_data 512
execute if score temp_0 mech_data matches 1 run function mechanization:base/tools/player_energy/use_energy

