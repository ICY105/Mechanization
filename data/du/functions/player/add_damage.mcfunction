#in_0 du_data: damage to add to player, to 1 decimal place
#in_1 du_data: 1 if should ignore armor

scoreboard players set temp_0 du_data 100
scoreboard players set temp_1 du_data 4
scoreboard players operation temp_1 du_data *= @s du_armor
scoreboard players operation temp_0 du_data -= temp_1 du_data
scoreboard players set temp_1 du_data 100

execute unless score in_1 du_data matches 1 run scoreboard players operation in_0 du_data *= temp_0 du_data
execute unless score in_1 du_data matches 1 run scoreboard players operation in_0 du_data /= temp_1 du_data

scoreboard players operation @s du_health += in_0 du_data
