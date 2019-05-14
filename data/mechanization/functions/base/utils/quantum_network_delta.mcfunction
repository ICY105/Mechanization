#get quantum energy
scoreboard players operation @s mech_power = in_6 mech_data

#energy transfer
scoreboard players set in_0 mech_data 1000
execute if entity @s[tag=mech_upgraded] run scoreboard players set in_0 mech_data 1250
execute if entity @s[tag=mech_upgrade_ender] run scoreboard players set in_0 mech_data 2000

scoreboard players set in_1 mech_data 4000

scoreboard players set in_2 mech_data 500000
execute if entity @s[tag=mech_upgraded] run scoreboard players set in_2 mech_data 625000
execute if entity @s[tag=mech_upgrade_nether] run scoreboard players set in_2 mech_data 1000000

scoreboard players set in_3 mech_data 16

execute if entity @s[tag=mech_no_effects] run scoreboard players set in_4 mech_data 0
execute if entity @s[tag=mech_effects] run scoreboard players set in_4 mech_data 1

function mechanization:base/energy/battery

#energy display
scoreboard players set in_0 mech_data 500000
execute if entity @s[tag=mech_upgraded] run scoreboard players set in_0 mech_data 625000
execute if entity @s[tag=mech_upgrade_nether] run scoreboard players set in_0 mech_data 1000000

scoreboard players operation in_1 mech_data = @s mech_power
scoreboard players set in_2 mech_data 6421027
scoreboard players set temp_0 mech_data 7

scoreboard players operation in_0 mech_data /= temp_0 mech_data
scoreboard players operation in_1 mech_data /= in_0 mech_data
execute unless score @s mech_power matches 0 run scoreboard players add in_1 mech_data 1
execute if score in_1 mech_data matches 9.. run scoreboard players set in_1 mech_data 8
scoreboard players operation in_1 mech_data += in_2 mech_data

execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get in_1 mech_data

#update quantum energy
scoreboard players operation in_6 mech_data = @s mech_power

#Ambient Sounds
execute if entity @s[scores={mech_timer=1}] run playsound mechanization:base.quantum_battery_ambient ambient @a[distance=..16] ~ ~ ~ 0.05
scoreboard players add @s mech_timer 1
scoreboard players set @s[scores={mech_timer=10}] mech_timer 0

#update registry
tag @s remove mech_not_checked
scoreboard players operation @s mech_power = in_6 mech_data

#Break
execute at @s unless block ~ ~ ~ minecraft:barrier run kill @s
