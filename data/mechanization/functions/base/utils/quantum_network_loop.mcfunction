execute store result score in_5 mech_data run data get block -29999999 0 1600 RecordItem.tag.mech.quantum_network[0].id
execute store result score in_6 mech_data run data get block -29999999 0 1600 RecordItem.tag.mech.quantum_network[0].energy

execute as @e[tag=mech_storageq,tag=mech_not_checked] if score @s mech_gridid = in_5 mech_data at @s run function mechanization:base/utils/quantum_network_delta
execute store result block -29999999 0 1600 RecordItem.tag.mech.quantum_network[0].energy int 1 run scoreboard players get in_6 mech_data

data modify block -29999999 0 1600 RecordItem.tag.mech.quantum_network append from block -29999999 0 1600 RecordItem.tag.mech.quantum_network[0]
data remove block -29999999 0 1600 RecordItem.tag.mech.quantum_network[0]

scoreboard players remove in_4 mech_data 1
execute if score in_4 mech_data matches 1.. run function mechanization:base/utils/quantum_network_loop
