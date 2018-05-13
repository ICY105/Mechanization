#get block data
scoreboard players operation in_0 mech_data = heat_13 mech_data
function mechanization:nuclear/machines/fission_reactor/block_data/process_block

#exchange heat
scoreboard players operation heat_21 mech_data += out_0 mech_data
