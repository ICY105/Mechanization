#moving
tag @s remove du_moving

scoreboard players operation temp_0 du_data = @s du_move_x
scoreboard players operation temp_1 du_data = @s du_move_y
scoreboard players operation temp_2 du_data = @s du_move_z

execute store result score @s du_move_x run data get entity @s Pos[0] 100
execute store result score @s du_move_y run data get entity @s Pos[1] 100
execute store result score @s du_move_z run data get entity @s Pos[2] 100

execute unless score temp_0 du_data = @s du_move_x run tag @s add du_moving
execute unless score temp_1 du_data = @s du_move_y run tag @s add du_moving
execute unless score temp_2 du_data = @s du_move_z run tag @s add du_moving
