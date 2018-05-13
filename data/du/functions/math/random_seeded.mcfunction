
#in_0: max output value (0-100,000,000)
#in_1: input seed
#out_0: generated random number
#out_1: new seed

scoreboard players set temp_0 du_data 1140671485
scoreboard players set temp_1 du_data 12820163
scoreboard players set temp_2 du_data 16777216
scoreboard players set temp_3 du_data -1
scoreboard players operation out_1 du_data = in_1 du_data

scoreboard players operation out_1 du_data *= temp_0 du_data
scoreboard players operation out_1 du_data += temp_1 du_data
scoreboard players operation out_1 du_data %= temp_2 du_data

scoreboard players operation out_0 du_data = out_1 du_data
scoreboard players operation out_0 du_data %= in_0 du_data
execute if score out_0 du_data matches ..-1 run scoreboard players operation out_0 du_data *= temp_3 du_data
