
#in_0: number to raise to a power
#in_1: power
#out_0: result

scoreboard players operation temp_0 du_data = in_1 du_data

execute if score temp_0 du_data matches 0 run scoreboard players set out_0 du_data 1
execute if score temp_0 du_data matches 1.. run scoreboard players operation out_0 du_data = in_0 du_data

execute if score temp_0 du_data matches 2.. run function du:math/pow_2
