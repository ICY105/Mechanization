
#area
scoreboard players operation temp_0 mechanization.data = @s du_move_x
scoreboard players operation temp_0 mechanization.data *= @s du_move_z

#y value
scoreboard players operation in_0 mechanization.data = @s mech_data
scoreboard players operation in_0 mechanization.data /= temp_0 mech_data

#forward value
scoreboard players operation in_1 mechanization.data = @s mech_data
scoreboard players operation in_1 mechanization.data %= temp_0 mech_data
scoreboard players operation in_1 mechanization.data %= @s du_move_x

#sideways value
scoreboard players operation in_2 mechanization.data = @s mech_data
scoreboard players operation in_2 mechanization.data %= temp_0 mech_data
scoreboard players operation in_2 mechanization.data /= @s du_move_x

scoreboard players add in_0 mechanization.data 1
scoreboard players add in_1 mechanization.data 1
scoreboard players add in_2 mechanization.data 1

#test for depth
execute store result score temp_0 mechanization.data run data get entity @s Pos[1]
execute if score in_0 mechanization.data > temp_0 mechanization.data run scoreboard players set @s mechanization.data -2

#mine block
execute if score @s mechanization.data matches 0.. run function mechanization:machines/machines/quarry/mine_pos_depth
