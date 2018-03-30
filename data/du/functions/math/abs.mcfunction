
#in_0: number to run absolute value
#out_0: result

scoreboard players operation out_0 du_data = in_0 du_data
scoreboard players set temp_0 du_data -1
execute if score out_0 du_data matches ..-1 run scoreboard players operation out_0 du_data *= temp_0 du_data
