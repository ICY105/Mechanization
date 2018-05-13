tag @s add mech_active

execute as @e[tag=mech_transmitter,distance=..32] unless score @s mech_power matches 0.. run scoreboard players set @s mech_power 0

execute if entity @e[tag=mech_storage3,distance=..32] as @e[tag=mech_reciever,distance=..32] unless score @s mech_power matches 0.. run scoreboard players set @s mech_power 6000
execute if entity @e[tag=mech_storage2,distance=..32] as @e[tag=mech_reciever,distance=..32] unless score @s mech_power matches 0.. run scoreboard players set @s mech_power 4000
execute if entity @e[tag=mech_storage1,distance=..32] as @e[tag=mech_reciever,distance=..32] unless score @s mech_power matches 0.. run scoreboard players set @s mech_power 2000

#execute as @e[tag=mech_storage1,distance=..32] unless score @s mech_power matches 0.. run function mechanization:base/machines/network_reformer/restore_t1
#execute as @e[tag=mech_storage2,distance=..32] unless score @s mech_power matches 0.. run function mechanization:base/machines/network_reformer/restore_t2
#execute as @e[tag=mech_storage3,distance=..32] unless score @s mech_power matches 0.. run function mechanization:base/machines/network_reformer/restore_t3

execute as @e[scores={mech_power=0..},distance=..32] unless score @s mech_gridid matches -2147483648.. run scoreboard players set @s mech_gridid 0
