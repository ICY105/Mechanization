
# NBT backup
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches 0.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid

execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#get capacity
scoreboard players operation $in_2 mechanization.data = $base.cf.t3_battery.capacity mech_data
execute if entity @s[tag=mech_upgraded] run scoreboard players operation $in_2 mechanization.data = $base.cf.t3_battery.capacity_mu mech_data
execute if entity @s[tag=mech_upgrade_ender] run scoreboard players operation $in_2 mechanization.data = $base.cf.t3_battery.capacity_eu mech_data
execute if entity @s[tag=mech_upgrade_nether] run scoreboard players operation $in_2 mechanization.data = $base.cf.t3_battery.capacity_nu mech_data

scoreboard players operation @s mechanization.storage_capacity = $in_2 mech_data
scoreboard players set @s[tag=mech_creative_battery] mechanization.stored_energy 250000

### energy display
scoreboard players operation $in_0 mechanization.data = $in_2 mech_data

scoreboard players operation $in_1 mechanization.data = @s mech_power
scoreboard players set $in_2 mechanization.data 6421918
scoreboard players set $temp_0 mechanization.data 7

scoreboard players operation $in_0 mechanization.data /= $temp_0 mech_data
scoreboard players operation $in_1 mechanization.data /= $in_0 mech_data
execute unless score @s mechanization.stored_energy matches 0 run scoreboard players add $in_1 mechanization.data 1
execute if score $in_1 mechanization.data matches 9.. run scoreboard players set $in_1 mechanization.data 8
scoreboard players operation $in_1 mechanization.data += $in_2 mech_data

execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $in_1 mech_data

#Ambient Sounds
execute if entity @s[scores={mechanization.timer=1},tag=!mech_muffler] run playsound mechanization:base.battery_ambient block @a[distance=..16] ~ ~ ~ 0.05
scoreboard players add @s mechanization.timer 1
scoreboard players set @s[scores={mechanization.timer=3}] mechanization.timer 0

#Break
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_machine_t1
