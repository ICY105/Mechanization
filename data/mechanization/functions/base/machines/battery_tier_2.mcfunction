
#holds 100000 KJ
#transfers 100 KJ/s
#transfers to 2000 KJ
#range 12 m

#store scoreboard to nbt
execute unless score @s mech_power matches 0.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#energy display
execute store success entity @s[scores={mech_power=..0}] ArmorItems[3].tag.CustomModelData int 6421009 if entity @s
execute store success entity @s[scores={mech_power=1..50000}] ArmorItems[3].tag.CustomModelData int 6421010 if entity @s
execute store success entity @s[scores={mech_power=50000..100000}] ArmorItems[3].tag.CustomModelData int 6421011 if entity @s
execute store success entity @s[scores={mech_power=100000..150000}] ArmorItems[3].tag.CustomModelData int 6421012 if entity @s
execute store success entity @s[scores={mech_power=150000..200000}] ArmorItems[3].tag.CustomModelData int 6421013 if entity @s
execute store success entity @s[scores={mech_power=200000..250000}] ArmorItems[3].tag.CustomModelData int 6421014 if entity @s
execute store success entity @s[scores={mech_power=250000..300000}] ArmorItems[3].tag.CustomModelData int 6421015 if entity @s
execute store success entity @s[scores={mech_power=300000..349600}] ArmorItems[3].tag.CustomModelData int 6421016 if entity @s
execute store success entity @s[scores={mech_power=349600..}] ArmorItems[3].CustomModelData int 6421017 if entity @s

#call API
scoreboard players set in_0 mech_data 400
execute if entity @s[tag=mech_upgraded] run scoreboard players set in_0 mech_data 500
execute if entity @s[tag=mech_upgrade_ender] run scoreboard players set in_0 mech_data 800

scoreboard players set in_1 mech_data 4000

scoreboard players set in_2 mech_data 350000
execute if entity @s[tag=mech_upgraded] run scoreboard players set in_2 mech_data 450000
execute if entity @s[tag=mech_upgrade_nether] run scoreboard players set in_2 mech_data 700000

scoreboard players set in_3 mech_data 16

execute if entity @s[tag=mech_no_effects] run scoreboard players set in_4 mech_data 0
execute if entity @s[tag=mech_effects] run scoreboard players set in_4 mech_data 1

function mechanization:base/energy/battery

#energy display
scoreboard players set in_0 mech_data 350000
execute if entity @s[tag=mech_upgraded] run scoreboard players set in_0 mech_data 450000
execute if entity @s[tag=mech_upgrade_nether] run scoreboard players set in_0 mech_data 700000

scoreboard players operation in_1 mech_data = @s mech_power
scoreboard players set in_2 mech_data 6421009
scoreboard players set temp_0 mech_data 7

scoreboard players operation in_0 mech_data /= temp_0 mech_data
scoreboard players operation in_1 mech_data /= in_0 mech_data
execute unless score @s mech_power matches 0 run scoreboard players add in_1 mech_data 1
execute if score in_1 mech_data matches 9.. run scoreboard players set in_1 mech_data 8
scoreboard players operation in_1 mech_data += in_2 mech_data

execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get in_1 mech_data

#store power to nbt
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#Ambient Sounds
execute if entity @s[scores={mech_timer=1}] run playsound mechanization:base.battery_ambient ambient @a[distance=..16] ~ ~ ~ 0.05
scoreboard players add @s mech_timer 1
scoreboard players set @s[scores={mech_timer=3}] mech_timer 0

#Break
execute at @s unless block ~ ~ ~ minecraft:barrier run kill @s