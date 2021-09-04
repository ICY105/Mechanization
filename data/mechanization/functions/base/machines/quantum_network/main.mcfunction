
tag @e[type=minecraft:item_frame,tag=mech_battery_qu] add mech_not_checked
execute store result score in_7 mech_data run data get storage mechanization:networks quantum
execute if score in_7 mech_data matches 1.. run function mechanization:base/machines/quantum_network/loop
execute as @e[type=minecraft:item_frame,tag=mech_battery_qu,tag=mech_not_checked,limit=1] run function mechanization:base/machines/quantum_network/new

