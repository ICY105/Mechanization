tag @s remove mech_not_checked
data modify block -29999999 0 1600 RecordItem.tag.mech.quantum_network prepend value {id:0,energy:0}
execute store result block -29999999 0 1600 RecordItem.tag.mech.quantum_network[0].id int 1 run scoreboard players get @s mech_gridid
execute store result block -29999999 0 1600 RecordItem.tag.mech.quantum_network[0].energy int 1 run scoreboard players get @s mech_energy
