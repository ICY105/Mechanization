
#area
scoreboard players operation temp_0 mech_data = @s du_move_x
scoreboard players operation temp_0 mech_data *= @s du_move_z

#y value
scoreboard players operation in_0 mech_data = @s mech_data
scoreboard players operation in_0 mech_data /= temp_0 mech_data

#forward value
scoreboard players operation in_1 mech_data = @s mech_data
scoreboard players operation in_1 mech_data %= temp_0 mech_data
scoreboard players operation in_1 mech_data %= @s du_move_x

#sideways value
scoreboard players operation in_2 mech_data = @s mech_data
scoreboard players operation in_2 mech_data %= temp_0 mech_data
scoreboard players operation in_2 mech_data /= @s du_move_x

scoreboard players add in_0 mech_data 1
scoreboard players add in_1 mech_data 1
scoreboard players add in_2 mech_data 1

#mine block
execute if score @s mech_data matches 0.. run function mechanization:machines/machines/quarry/mine_pos_depth
