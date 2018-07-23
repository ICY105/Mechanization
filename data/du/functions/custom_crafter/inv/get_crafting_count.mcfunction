scoreboard players set in_0 du_data 0
scoreboard players set in_1 du_data 0
scoreboard players set in_2 du_data 0
scoreboard players set in_3 du_data 0
scoreboard players set in_4 du_data 0
scoreboard players set in_5 du_data 0
scoreboard players set in_6 du_data 0
scoreboard players set in_7 du_data 0
scoreboard players set in_8 du_data 0

function du:custom_crafter/inv/get_0-2

scoreboard players set temp_2 du_data 0
execute if score in_0 du_data matches 1.. run scoreboard players add temp_2 du_data 1
execute if score in_1 du_data matches 1.. run scoreboard players add temp_2 du_data 1
execute if score in_2 du_data matches 1.. run scoreboard players add temp_2 du_data 1

execute if score temp_2 du_data matches 0 run function du:custom_crafter/inv/get_3-5_0
execute if score temp_2 du_data matches 1 run function du:custom_crafter/inv/get_3-5_1
execute if score temp_2 du_data matches 2 run function du:custom_crafter/inv/get_3-5_2
execute if score temp_2 du_data matches 3 run function du:custom_crafter/inv/get_3-5_3

execute if score in_3 du_data matches 1.. run scoreboard players add temp_2 du_data 1
execute if score in_4 du_data matches 1.. run scoreboard players add temp_2 du_data 1
execute if score in_5 du_data matches 1.. run scoreboard players add temp_2 du_data 1

execute if score temp_2 du_data matches 0 run function du:custom_crafter/inv/get_6-8_0
execute if score temp_2 du_data matches 1 run function du:custom_crafter/inv/get_6-8_1
execute if score temp_2 du_data matches 2 run function du:custom_crafter/inv/get_6-8_2
execute if score temp_2 du_data matches 3 run function du:custom_crafter/inv/get_6-8_3
execute if score temp_2 du_data matches 4 run function du:custom_crafter/inv/get_6-8_4
execute if score temp_2 du_data matches 5 run function du:custom_crafter/inv/get_6-8_5
execute if score temp_2 du_data matches 6 run function du:custom_crafter/inv/get_6-8_6