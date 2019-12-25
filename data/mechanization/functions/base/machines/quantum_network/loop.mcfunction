
execute store result score in_5 mech_data run data get storage mechanization:networks quantum[0].id
execute store result score in_6 mech_data run data get storage mechanization:networks quantum[0].energy

execute as @e[tag=mech_storageq,tag=mech_not_checked] if score @s mech_gridid = in_5 mech_data at @s run function mechanization:base/machines/quantum_network/delta
execute store result storage mechanization:networks quantum[0].energy int 1 run scoreboard players get in_6 mech_data

#loop list
data modify storage mechanization:networks quantum append from storage mechanization:networks quantum[0]
data remove storage mechanization:networks quantum[0]

#loop function
scoreboard players remove in_4 mech_data 1
execute if score in_4 mech_data matches 1 run function mechanization:base/machines/quantum_network/loop
