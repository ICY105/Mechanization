
execute if score temp_3 mech_data matches 0..2 if block ~ ~ ~ #mechanization:gen_in run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=bottom,waterlogged=false]
execute if score temp_3 mech_data matches 1..3 positioned ~1 ~ ~ if block ~ ~ ~ #mechanization:gen_in run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=bottom,waterlogged=false]
execute if score temp_3 mech_data matches 2..4 positioned ~ ~ ~1 if block ~ ~ ~ #mechanization:gen_in run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=bottom,waterlogged=false]
execute if score temp_3 mech_data matches 3..5 positioned ~1 ~ ~1 if block ~ ~ ~ #mechanization:gen_in run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=bottom,waterlogged=false]

execute if score temp_3 mech_data matches 4..6 positioned ~ ~1 ~ if block ~ ~ ~ #mechanization:gen_in run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=bottom,waterlogged=false]
execute if score temp_3 mech_data matches 5..7 positioned ~1 ~1 ~ if block ~ ~ ~ #mechanization:gen_in run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=bottom,waterlogged=false]
execute if score temp_3 mech_data matches 6..8 positioned ~ ~1 ~1 if block ~ ~ ~ #mechanization:gen_in run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=bottom,waterlogged=false]
execute if score temp_3 mech_data matches 7..9 positioned ~1 ~1 ~1 if block ~ ~ ~ #mechanization:gen_in run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=bottom,waterlogged=false]

