
#get quantum energy
scoreboard players operation @s mech_power = in_6 mech_data


### Call API

#rate
scoreboard players operation in_0 mech_data = $base.config.q_rate mech_data
execute if entity @s[tag=mech_upgraded] run scoreboard players operation in_0 mech_data = $base.config.q_rate_upgrade mech_data
execute if entity @s[tag=mech_upgrade_ender] run scoreboard players operation in_0 mech_data = $base.config.q_rate_ender_upgrade mech_data
execute if entity @s[tag=mech_upgrade_nether] run scoreboard players operation in_0 mech_data = $base.config.q_rate_nether_upgrade mech_data

#buffer
scoreboard players set in_1 mech_data 6000

#capacity
scoreboard players operation in_2 mech_data = $base.config.q_capacity mech_data
execute if entity @s[tag=mech_upgraded] run scoreboard players operation in_2 mech_data = $base.config.q_capacity_upgrade mech_data
execute if entity @s[tag=mech_upgrade_ender] run scoreboard players operation in_2 mech_data = $base.config.q_capacity_ender_upgrade mech_data
execute if entity @s[tag=mech_upgrade_nether] run scoreboard players operation in_2 mech_data = $base.config.q_capacity_nether_upgrade mech_data

#range
scoreboard players set in_3 mech_data 12

#effects
execute if entity @s[tag=mech_no_effects] run scoreboard players set in_4 mech_data 0
execute if entity @s[tag=mech_effects] run scoreboard players set in_4 mech_data 1

#call
function mechanization:base/energy/battery


### energy display
scoreboard players operation in_0 mech_data = in_2 mech_data

scoreboard players operation in_1 mech_data = @s mech_power
scoreboard players set in_2 mech_data 6421027
scoreboard players set temp_0 mech_data 7

scoreboard players operation in_0 mech_data /= temp_0 mech_data
scoreboard players operation in_1 mech_data /= in_0 mech_data
execute unless score @s mech_power matches 0 run scoreboard players add in_1 mech_data 1
execute if score in_1 mech_data matches 9.. run scoreboard players set in_1 mech_data 8
scoreboard players operation in_1 mech_data += in_2 mech_data

execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get in_1 mech_data

#Ambient Sounds
execute if entity @s[scores={mech_timer=1}] run playsound mechanization:base.quantum_battery_ambient ambient @a[distance=..16] ~ ~ ~ 0.05
scoreboard players add @s mech_timer 1
scoreboard players set @s[scores={mech_timer=10}] mech_timer 0

#update registry
tag @s remove mech_not_checked
scoreboard players operation in_6 mech_data = @s mech_power

#Break
execute at @s unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t3
