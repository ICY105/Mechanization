
tag @s add mech_ef_setup
tag @s add mech_no_upgrade

execute if entity @s[tag=EF_CanReceive,tag=!EF_CanSend] run tag @s add mech_receiver
execute if entity @s[tag=!EF_CanReceive,tag=EF_CanSend] run tag @s add mech_transmitter
execute if entity @s[tag=EF_CanReceive,tag=EF_CanSend] run tag @s add mech_power_storage

scoreboard players set @s mech_power 0
scoreboard players set @s mech_gridid 0
scoreboard players operation @s mechanization.storage_capacity = @s EF_kJmax

execute if entity @s[tag=!mech_cable_init] run function mechanization:base/machines/cable/add_adjacent_cable
execute align xyz run kill @e[tag=du_furnace,type=marker,dx=0,dy=0,dz=0]
