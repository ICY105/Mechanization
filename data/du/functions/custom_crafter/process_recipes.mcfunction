scoreboard players operation temp_4 du_data = out du_data

function du:custom_crafter/check_recipes
tag @s remove du_has_recipe
scoreboard players operation in du_data = temp_4 du_data
function du:custom_crafter/inv/set_16

function du:custom_crafter/inv/get_crafting_count

scoreboard players operation out_0 du_data *= temp_3 du_data
scoreboard players operation out_1 du_data *= temp_3 du_data
scoreboard players operation out_2 du_data *= temp_3 du_data
scoreboard players operation out_3 du_data *= temp_3 du_data
scoreboard players operation out_4 du_data *= temp_3 du_data
scoreboard players operation out_5 du_data *= temp_3 du_data
scoreboard players operation out_6 du_data *= temp_3 du_data
scoreboard players operation out_7 du_data *= temp_3 du_data
scoreboard players operation out_8 du_data *= temp_3 du_data

scoreboard players set temp_2 du_data 0
execute if score in_0 du_data matches 1.. run scoreboard players add temp_2 du_data 1
execute if score in_1 du_data matches 1.. run scoreboard players add temp_2 du_data 1
execute if score in_2 du_data matches 1.. run scoreboard players add temp_2 du_data 1

scoreboard players set temp_3 du_data 0
execute if score in_0 du_data matches 1.. run scoreboard players add temp_3 du_data 1
execute if score in_1 du_data matches 1.. run scoreboard players add temp_3 du_data 1
execute if score in_2 du_data matches 1.. run scoreboard players add temp_3 du_data 1
execute if score in_3 du_data matches 1.. run scoreboard players add temp_3 du_data 1
execute if score in_4 du_data matches 1.. run scoreboard players add temp_3 du_data 1
execute if score in_5 du_data matches 1.. run scoreboard players add temp_3 du_data 1
execute if score temp_4 du_data matches 1.. run scoreboard players add temp_3 du_data 1

scoreboard players operation in_0 du_data -= out_0 du_data
scoreboard players operation in_1 du_data -= out_1 du_data
scoreboard players operation in_2 du_data -= out_2 du_data
scoreboard players operation in_3 du_data -= out_3 du_data
scoreboard players operation in_4 du_data -= out_4 du_data
scoreboard players operation in_5 du_data -= out_5 du_data
scoreboard players operation in_6 du_data -= out_6 du_data
scoreboard players operation in_7 du_data -= out_7 du_data
scoreboard players operation in_8 du_data -= out_8 du_data

function du:custom_crafter/inv/set_crafting_count
