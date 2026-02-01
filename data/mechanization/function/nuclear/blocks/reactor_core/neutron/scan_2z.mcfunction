
scoreboard players operation #to_next_block mechanization.data = #next.z mechanization.data

# Find the exact position of the ray when it leaves the current tile
execute if score #dz mechanization.data matches 0.. run scoreboard players set #pos.z mechanization.data 0
execute if score #dz mechanization.data matches ..-1 run scoreboard players set #pos.z mechanization.data 1000000

# Calculate new position on the second axis
scoreboard players operation #temp mechanization.data = #to_next_block mechanization.data
scoreboard players operation #temp mechanization.data *= #dx mechanization.data
scoreboard players operation #temp mechanization.data /= #cons.1000 mechanization.data
scoreboard players operation #pos.x mechanization.data += #temp mechanization.data
