scoreboard players set out_0 mech_data 0
scoreboard players set in_0 mech_data 4
execute if block ~ ~-1 ~ air if block ~ ~-2 ~ air run function mechanization:base/energy/player_energy
execute if entity @s[x_rotation=-90..-45] if block ~ ~-1 ~ air unless block ~ ~-2 ~ air run function mechanization:base/energy/player_energy

effect clear @s minecraft:levitation
execute if score out_0 mech_data matches 1 run effect give @s[x_rotation=-45..45] minecraft:levitation 1 255 true
execute if score out_0 mech_data matches 1 run effect give @s[x_rotation=-90..-45] minecraft:levitation 1 5 true
execute if score out_0 mech_data matches 1 run effect give @s[x_rotation=45..90] minecraft:levitation 1 250 true
execute if score out_0 mech_data matches 1 run effect give @s minecraft:slow_falling 1 0 true
