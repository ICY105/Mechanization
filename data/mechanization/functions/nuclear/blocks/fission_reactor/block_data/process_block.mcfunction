#current heat: in_0
#exchange value: out_0 - will not exceed current heat/4

#Boilers
execute if block ~ ~ ~ iron_block run function mechanization:nuclear/machines/fission_reactor/block_data/iron_block
execute if block ~ ~ ~ gold_block run function mechanization:nuclear/machines/fission_reactor/block_data/gold_block
execute if block ~ ~ ~ emerald_block run function mechanization:nuclear/machines/fission_reactor/block_data/emerald_block
execute if block ~ ~ ~ diamond_block run function mechanization:nuclear/machines/fission_reactor/block_data/diamond_block

#Exchangers
execute if block ~ ~ ~ obsidian run function mechanization:nuclear/machines/fission_reactor/block_data/obsidian
execute if block ~ ~ ~ coal_block run function mechanization:nuclear/machines/fission_reactor/block_data/coal_block
execute if block ~ ~ ~ redstone_block run function mechanization:nuclear/machines/fission_reactor/block_data/redstone_block
execute if block ~ ~ ~ quartz_block run function mechanization:nuclear/machines/fission_reactor/block_data/quartz_block

#Coolers
execute if block ~ ~ ~ snow_block run function mechanization:nuclear/machines/fission_reactor/block_data/snow_block
execute if block ~ ~ ~ lapis_block run function mechanization:nuclear/machines/fission_reactor/block_data/lapis_block
execute if block ~ ~ ~ ice run function mechanization:nuclear/machines/fission_reactor/block_data/ice
execute if block ~ ~ ~ packed_ice run function mechanization:nuclear/machines/fission_reactor/block_data/packed_ice

#Steam
execute if score out_2 mech_data matches 1.. if score in_0 mech_data matches 1.. if block ~ ~1 ~ water run function mechanization:nuclear/machines/fission_reactor/block_data/create_steam

#Exchange
execute if score out_0 mech_data matches 1.. run scoreboard players operation temp_1 mech_data = in_0 mech_data
execute if score out_0 mech_data matches 1.. run scoreboard players operation temp_1 mech_data /= temp_0 mech_data
execute if score out_0 mech_data matches 1.. run execute if score out_0 mech_data >= temp_1 mech_data run scoreboard players operation out_0 mech_data = temp_1 mech_data

#Cooling
execute if score out_1 mech_data matches 1.. run scoreboard players operation temp_1 mech_data = out_0 mech_data
execute if score out_1 mech_data matches 1.. run scoreboard players operation temp_1 mech_data *= temp_0 mech_data
execute if score out_1 mech_data matches 1.. run scoreboard players operation in_0 mech_data -= temp_1 mech_data
execute if score out_1 mech_data matches 1.. run execute if score in_0 mech_data > out_1 mech_data run scoreboard players operation @s mech_x -= out_1 mech_data
execute if score out_1 mech_data matches 1.. run execute if score in_0 mech_data <= out_1 mech_data run scoreboard players operation @s mech_x -= in_0 mech_data
