
# NBT backup
execute unless score @s mech_power matches 0.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid

execute store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid


### Call API

#rate
scoreboard players operation in_0 mech_data = $base.cf.t2_capacitor.rate mech_data
execute if entity @s[tag=mech_upgraded] run scoreboard players operation in_0 mech_data = $base.cf.t2_capacitor.rate_upgrade mech_data
execute if entity @s[tag=mech_upgrade_ender] run scoreboard players operation in_0 mech_data = $base.cf.t2_capacitor.rate_ender_upgrade mech_data
execute if entity @s[tag=mech_upgrade_nether] run scoreboard players operation in_0 mech_data = $base.cf.t2_capacitor.rate_nether_upgrade mech_data

#buffer
scoreboard players set in_1 mech_data 4000

#capacity
scoreboard players operation in_2 mech_data = $base.cf.t2_capacitor.capacity mech_data
execute if entity @s[tag=mech_upgraded] run scoreboard players operation in_2 mech_data = $base.cf.t2_capacitor.capacity_upgrade mech_data
execute if entity @s[tag=mech_upgrade_ender] run scoreboard players operation in_2 mech_data = $base.cf.t2_capacitor.capacity_ender_upgrade mech_data
execute if entity @s[tag=mech_upgrade_nether] run scoreboard players operation in_2 mech_data = $base.cf.t2_capacitor.capacity_nether_upgrade mech_data

#range
scoreboard players operation in_3 mech_data = $base.cf.t2_capacitor.range mech_data

#effects
execute if entity @s[tag=mech_no_effects] run scoreboard players set in_4 mech_data 0
execute if entity @s[tag=mech_effects] run scoreboard players set in_4 mech_data 1

#call
function mechanization:base/energy/capacitor


### energy display
scoreboard players operation in_0 mech_data = in_2 mech_data

scoreboard players operation in_1 mech_data = @s mech_power
scoreboard players set in_2 mech_data 6421945
scoreboard players set temp_0 mech_data 7

scoreboard players operation in_0 mech_data /= temp_0 mech_data
scoreboard players operation in_1 mech_data /= in_0 mech_data
execute unless score @s mech_power matches 0 run scoreboard players add in_1 mech_data 1
execute if score in_1 mech_data matches 9.. run scoreboard players set in_1 mech_data 8
scoreboard players operation in_1 mech_data += in_2 mech_data

execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get in_1 mech_data

#Ambient Sounds
execute if entity @s[scores={mech_timer=1}] run playsound mechanization:base.battery_ambient ambient @a[distance=..16] ~ ~ ~ 0.05
scoreboard players add @s mech_timer 1
scoreboard players set @s[scores={mech_timer=3}] mech_timer 0

#Break
execute at @s unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t2
