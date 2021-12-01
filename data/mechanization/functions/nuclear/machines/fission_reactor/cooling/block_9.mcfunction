#get block data
scoreboard players operation in_0 mechanization.data = heat_9 mech_data
function mechanization:nuclear/machines/fission_reactor/block_data/process_block

#exchange heat
scoreboard players operation heat_13 mechanization.data += out_0 mech_data
scoreboard players operation heat_17 mechanization.data += out_0 mech_data
