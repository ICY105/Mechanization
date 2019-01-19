tag @e[tag=mech_storageq] add mech_not_checked
execute store result score in_4 mech_data run data get block -29999999 0 1600 RecordItem.tag.mech.quantum_network
execute if score in_4 mech_data matches 1.. run function mechanization:base/utils/quantum_network_loop
execute as @e[tag=mech_storageq,tag=mech_not_checked,limit=1] run function mechanization:base/utils/quantum_network_new
