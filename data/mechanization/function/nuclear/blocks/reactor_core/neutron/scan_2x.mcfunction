
scoreboard players operation #to_next_block mechanization.data = #next.x mechanization.data

# Find the exact position of the ray when it leaves the current tile
execute if score #dx mechanization.data matches 0.. run scoreboard players set #pos.x mechanization.data 0
execute if score #dx mechanization.data matches ..-1 run scoreboard players set #pos.x mechanization.data 1000000

# Calculate new position on the second axis
scoreboard players operation #temp mechanization.data = #to_next_block mechanization.data
scoreboard players operation #temp mechanization.data *= #dz mechanization.data
scoreboard players operation #temp mechanization.data /= #cons.1000 mechanization.data
scoreboard players operation #pos.z mechanization.data += #temp mechanization.data
