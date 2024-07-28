
# area
scoreboard players operation #area mechanization.data = @s player_action.x
scoreboard players operation #area mechanization.data *= @s player_action.z

# y value
scoreboard players operation #y mechanization.data = @s mechanization.data
scoreboard players operation #y mechanization.data /= #area mechanization.data

# forward value
scoreboard players operation #x mechanization.data = @s mechanization.data
scoreboard players operation #x mechanization.data %= #area mechanization.data
scoreboard players operation #x mechanization.data %= @s player_action.x

# sideways value
scoreboard players operation #z mechanization.data = @s mechanization.data
scoreboard players operation #z mechanization.data %= #area mechanization.data
scoreboard players operation #z mechanization.data /= @s player_action.x

scoreboard players add #y mechanization.data 1
scoreboard players add #x mechanization.data 1
scoreboard players add #z mechanization.data 1

#mine block
execute if score @s mechanization.data matches 0.. run function mechanization:machines/blocks/quarry/mine_pos_depth
