
#transfers 600 KJ/s
#transfers to 4000 KJ
#range 48 m

#load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.data matches -2147483648.. store result score @s mechanization.data run data get entity @s Item.tag.mech_data

#main
execute if score @s mechanization.data matches 0 if score @s mechanization.stored_energy matches 1.. run function mechanization:base/machines/relay/transmit

#store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_data int 1 run scoreboard players get @s mech_data

#Break
execute at @s unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t2
