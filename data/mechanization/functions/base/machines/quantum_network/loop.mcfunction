
execute store result score $predicate mech_data run data get storage mechanization:networks quantum[0].id
execute store result score in_6 mech_data run data get storage mechanization:networks quantum[0].energy

execute as @e[type=minecraft:item_frame,tag=mech_battery_qu,tag=mech_not_checked,predicate=mechanization:matches_gridid] at @s run function mechanization:base/machines/quantum_network/delta
execute store result storage mechanization:networks quantum[0].energy int 1 run scoreboard players get in_6 mech_data

#loop list
data modify storage mechanization:networks quantum append from storage mechanization:networks quantum[0]
data remove storage mechanization:networks quantum[0]

#loop function
scoreboard players remove in_7 mech_data 1
execute if score in_7 mech_data matches 1.. run function mechanization:base/machines/quantum_network/loop
