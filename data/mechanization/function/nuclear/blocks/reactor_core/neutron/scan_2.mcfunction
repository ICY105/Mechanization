
# See what distance the ray needs to travel to hit another tile with a different x coordinate
execute if score #dx mechanization.data matches 0.. run scoreboard players set #next.x mechanization.data 1000000000
execute if score #dx mechanization.data matches ..-1 run scoreboard players set #next.x mechanization.data 0
scoreboard players operation #temp mechanization.data = #pos.x mechanization.data
scoreboard players operation #temp mechanization.data *= #cons.1000 mechanization.data
scoreboard players operation #next.x mechanization.data -= #temp mechanization.data
scoreboard players operation #next.x mechanization.data /= #dx mechanization.data

# See what distance the ray needs to travel to hit another tile with a different z coordinate
execute if score #dz mechanization.data matches 0.. run scoreboard players set #next.z mechanization.data 1000000000
execute if score #dz mechanization.data matches ..-1 run scoreboard players set #next.z mechanization.data 0
scoreboard players operation #temp mechanization.data = #pos.z mechanization.data
scoreboard players operation #temp mechanization.data *= #cons.1000 mechanization.data
scoreboard players operation #next.z mechanization.data -= #temp mechanization.data
scoreboard players operation #next.z mechanization.data /= #dz mechanization.data

execute if entity @s[tag=mechanization.debug] run tellraw @p [{"text":"scan = "},{"score":{"name":"#next.x","objective":"mechanization.data"}},{"text":", "},{"score":{"name":"#next.z","objective":"mechanization.data"}}]

# Determine which distance is the shortest
execute if score #next.x mechanization.data <= #next.z mechanization.data run function mechanization:nuclear/blocks/reactor_core/neutron/scan_2x
execute if score #next.x mechanization.data > #next.z mechanization.data run function mechanization:nuclear/blocks/reactor_core/neutron/scan_2z

# Return the added distance
#return run scoreboard players operation #to_next_block mechanization.data *= #cons.1000 mechanization.data

# run neutron actions
# function mechanization:nuclear/blocks/reactor_core/neutron/interactions/check_block

execute if entity @s[tag=mechanization.debug] run tellraw @p [{"text":"next = "},{"score":{"name":"#to_next_block","objective":"mechanization.data"}}]

execute align xyz run particle flame ~0.5 ~1 ~0.5
function mechanization:nuclear/blocks/reactor_core/neutron/draw_particle

# loop
scoreboard players operation #loop mechanization.data -= #to_next_block mechanization.data

execute if score #loop mechanization.data matches 1.. if score #next.x mechanization.data <= #next.z mechanization.data if score #next.x mechanization.data matches 0.. positioned ~1 ~ ~ run return run function mechanization:nuclear/blocks/reactor_core/neutron/scan_2
execute if score #loop mechanization.data matches 1.. if score #next.x mechanization.data <= #next.z mechanization.data if score #next.x mechanization.data matches ..-1 positioned ~-1 ~ ~ run return run function mechanization:nuclear/blocks/reactor_core/neutron/scan_2
execute if score #loop mechanization.data matches 1.. if score #next.x mechanization.data >= #next.z mechanization.data if score #next.z mechanization.data matches 0.. positioned ~ ~ ~1 run return run function mechanization:nuclear/blocks/reactor_core/neutron/scan_2
execute if score #loop mechanization.data matches 1.. if score #next.x mechanization.data >= #next.z mechanization.data if score #next.z mechanization.data matches 0.. positioned ~ ~ ~-1 run return run function mechanization:nuclear/blocks/reactor_core/neutron/scan_2
