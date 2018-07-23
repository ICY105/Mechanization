execute if score in_0 du_data matches 1.. run scoreboard players operation in_0 du_data /= out_0 du_data
execute if score in_1 du_data matches 1.. run scoreboard players operation in_1 du_data /= out_1 du_data
execute if score in_2 du_data matches 1.. run scoreboard players operation in_2 du_data /= out_2 du_data
execute if score in_3 du_data matches 1.. run scoreboard players operation in_3 du_data /= out_3 du_data
execute if score in_4 du_data matches 1.. run scoreboard players operation in_4 du_data /= out_4 du_data
execute if score in_5 du_data matches 1.. run scoreboard players operation in_5 du_data /= out_5 du_data
execute if score in_6 du_data matches 1.. run scoreboard players operation in_6 du_data /= out_6 du_data
execute if score in_7 du_data matches 1.. run scoreboard players operation in_7 du_data /= out_7 du_data
execute if score in_8 du_data matches 1.. run scoreboard players operation in_8 du_data /= out_8 du_data

scoreboard players set temp_0 du_data 65
execute if score in_0 du_data matches 1.. if score in_0 du_data < temp_0 du_data run scoreboard players operation temp_0 du_data = in_0 du_data
execute if score in_1 du_data matches 1.. if score in_1 du_data < temp_0 du_data run scoreboard players operation temp_0 du_data = in_1 du_data
execute if score in_2 du_data matches 1.. if score in_2 du_data < temp_0 du_data run scoreboard players operation temp_0 du_data = in_2 du_data
execute if score in_3 du_data matches 1.. if score in_3 du_data < temp_0 du_data run scoreboard players operation temp_0 du_data = in_3 du_data
execute if score in_4 du_data matches 1.. if score in_4 du_data < temp_0 du_data run scoreboard players operation temp_0 du_data = in_4 du_data
execute if score in_5 du_data matches 1.. if score in_5 du_data < temp_0 du_data run scoreboard players operation temp_0 du_data = in_5 du_data
execute if score in_6 du_data matches 1.. if score in_6 du_data < temp_0 du_data run scoreboard players operation temp_0 du_data = in_6 du_data
execute if score in_7 du_data matches 1.. if score in_7 du_data < temp_0 du_data run scoreboard players operation temp_0 du_data = in_7 du_data
execute if score in_8 du_data matches 1.. if score in_8 du_data < temp_0 du_data run scoreboard players operation temp_0 du_data = in_8 du_data
execute if score temp_0 du_data matches 65.. run scoreboard players set temp_0 du_data 0


execute if score out du_data matches 1 run function du:custom_crafter/check_stacksize

scoreboard players operation temp_0 du_data *= out du_data
execute if score temp_0 du_data matches 65.. run function du:custom_crafter/inv/compact

scoreboard players operation temp_3 du_data = temp_0 du_data
scoreboard players operation temp_3 du_data /= out du_data

scoreboard players operation @s du_data = temp_0 du_data
scoreboard players operation in du_data = temp_0 du_data
function du:custom_crafter/inv/set_16