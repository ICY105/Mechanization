setblock ~ ~1 ~ air
particle minecraft:cloud ~ ~1.5 ~ 0.1 0.1 0.1 0 5

execute if score in_0 mechanization.data >= out_2 mechanization.data run scoreboard players operation heat_0 mechanization.data += out_2 mech_data
execute if score in_0 mechanization.data < out_2 mechanization.data run scoreboard players operation heat_0 mechanization.data += in_0 mech_data

scoreboard players set temp_2 mechanization.data 1