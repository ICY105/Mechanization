
execute if score temp_3 mech_data matches 0 if block ~ ~ ~ #mechanization:gen_in run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=double,waterlogged=true]
execute if score temp_3 mech_data matches 0..1 positioned ~1 ~ ~ if block ~ ~ ~ #mechanization:gen_in run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=double,waterlogged=true]
execute if score temp_3 mech_data matches 1..3 positioned ~ ~ ~1 if block ~ ~ ~ #mechanization:gen_in run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=double,waterlogged=true]
execute if score temp_3 mech_data matches 1..4 positioned ~1 ~ ~1 if block ~ ~ ~ #mechanization:gen_in run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=double,waterlogged=true]
