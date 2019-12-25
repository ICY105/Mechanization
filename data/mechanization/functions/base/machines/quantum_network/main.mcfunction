
tag @e[tag=mech_storageq] add mech_not_checked
execute store result score in_4 mech_data run data get storage mechanization:networks quantum
execute if score in_4 mech_data matches 1.. run function mechanization:base/machines/quantum_network/loop
execute as @e[tag=mech_storageq,tag=mech_not_checked,limit=1] run function mechanization:base/machines/quantum_network/new

