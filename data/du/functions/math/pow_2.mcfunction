
scoreboard players remove temp_0 du_data 1
scoreboard players operation out_0 du_data *= in_0 du_data
execute if score temp_0 du_data matches 2.. run function du:math/pow_2
