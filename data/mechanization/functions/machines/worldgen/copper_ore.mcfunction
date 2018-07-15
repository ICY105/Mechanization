scoreboard players set temp_0 mech_data 0
execute if score temp_0 mech_data matches 0 unless block ~ ~-1 ~ #mechanization:air run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 0 unless block ~ ~1 ~ #mechanization:air run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 0 unless block ~1 ~ ~ #mechanization:air run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 0 unless block ~-1 ~ ~ #mechanization:air run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 0 unless block ~ ~ ~1 #mechanization:air run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 0 unless block ~ ~ ~-1 #mechanization:air run scoreboard players set temp_0 mech_data 1

execute if score temp_0 mech_data matches 1 if block ~ ~-1 ~ #mechanization:gen_avoid run scoreboard players set temp_0 mech_data 0
execute if score temp_0 mech_data matches 1 if block ~ ~1 ~ #mechanization:gen_avoid run scoreboard players set temp_0 mech_data 0
execute if score temp_0 mech_data matches 1 if block ~1 ~ ~ #mechanization:gen_avoid run scoreboard players set temp_0 mech_data 0
execute if score temp_0 mech_data matches 1 if block ~ ~ ~1 #mechanization:gen_avoid run scoreboard players set temp_0 mech_data 0
execute if score temp_0 mech_data matches 1 if block ~-1 ~ ~ #mechanization:gen_avoid run scoreboard players set temp_0 mech_data 0
execute if score temp_0 mech_data matches 1 if block ~ ~ ~-1 #mechanization:gen_avoid run scoreboard players set temp_0 mech_data 0

execute if score temp_0 mech_data matches 1 run setblock ~ ~ ~ player_head{Owner:{Id:"00000000-0000-0000-ee69-000000000001",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDFkMWFkMmJkMzdmOWEzYjdjODk2MmJkZTEyODkyYTU1NTg2OTIzNmYyODU3Mzg3YzgyNTZiNGU0M2I1MCJ9fX0"}]}}}
execute if score temp_0 mech_data matches 0 run setblock ~ ~ ~ air