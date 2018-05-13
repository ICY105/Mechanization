scoreboard players set temp_0 mech_data 0
execute if score temp_0 mech_data matches 0 unless block ~ ~-1 ~ #mechanization:air run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 0 unless block ~ ~1 ~ #mechanization:air run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 0 unless block ~1 ~ ~ #mechanization:air run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 0 unless block ~-1 ~ ~ #mechanization:air run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 0 unless block ~ ~ ~1 #mechanization:air run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 0 unless block ~ ~ ~-1 #mechanization:air run scoreboard players set temp_0 mech_data 1

execute if score temp_0 mech_data matches 1 if block ~ ~-1 ~ water run scoreboard players set temp_0 mech_data 0
execute if score temp_0 mech_data matches 1 if block ~ ~1 ~ water run scoreboard players set temp_0 mech_data 0

execute if score temp_0 mech_data matches 1 run setblock ~ ~ ~ player_head{Owner:{Id:"00000000-0000-0000-ee69-000000000003",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2YzNDdiMjdiN2QxMjM4NTlmY2QzYWJmZWU4NmY3YWEwNTgzMjFmOGFmODQ3Nzc0ZTg4ZmQ4YTY3MDI3NzQifX19"}]}}}
execute if score temp_0 mech_data matches 0 run setblock ~ ~ ~ air