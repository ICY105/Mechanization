
#holds 100000 KJ
#transfers 100 KJ/s
#transfers to 4000 KJ
#range 12 m

#store scoreboard to nbt
execute unless score @s mech_power matches 0.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#energy display
execute store success entity @s[scores={mech_power=..0}] ArmorItems[3].tag.Damage int 19 if entity @s
execute store success entity @s[scores={mech_power=1..142857}] ArmorItems[3].tag.Damage int 20 if entity @s
execute store success entity @s[scores={mech_power=142857..285714}] ArmorItems[3].tag.Damage int 21 if entity @s
execute store success entity @s[scores={mech_power=285714..428571}] ArmorItems[3].tag.Damage int 22 if entity @s
execute store success entity @s[scores={mech_power=428571..571428}] ArmorItems[3].tag.Damage int 23 if entity @s
execute store success entity @s[scores={mech_power=571428..714285}] ArmorItems[3].tag.Damage int 24 if entity @s
execute store success entity @s[scores={mech_power=714285..857142}] ArmorItems[3].tag.Damage int 25 if entity @s
execute store success entity @s[scores={mech_power=857142..999000}] ArmorItems[3].tag.Damage int 26 if entity @s
execute store success entity @s[scores={mech_power=999000..}] ArmorItems[3].tag.Damage int 27 if entity @s

#energy transfer
scoreboard players operation temp_1 mech_data = @s mech_gridid

scoreboard players set temp_0 mech_data 0
execute if entity @s[scores={mech_power=..999000}] as @e[scores={mech_power=1000..},distance=..24,tag=mech_transmitter] if score @s mech_gridid = temp_1 mech_data run tag @s add mech_posstrans
execute if entity @s[scores={mech_power=..999000}] as @e[limit=1,sort=nearest,tag=mech_posstrans] at @s run function mechanization:base/machines/battery_3/transmit_effect
execute if score temp_0 mech_data matches 1 run scoreboard players add @s mech_power 1000
tag @e[tag=mech_posstrans] remove mech_posstrans

scoreboard players set temp_0 mech_data 0
execute if entity @s[scores={mech_power=1000..}] as @e[scores={mech_power=..5000},distance=..24,tag=mech_reciever] if score @s mech_gridid = temp_1 mech_data run tag @s add mech_posstrans
execute if entity @s[scores={mech_power=1000..}] as @e[limit=1,sort=nearest,tag=mech_posstrans] at @s run function mechanization:base/machines/battery_3/recieve_effect
execute if score temp_0 mech_data matches 1 run scoreboard players remove @s mech_power 1000
tag @e[tag=mech_posstrans] remove mech_posstrans

#store power to nbt
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#Ambient Sounds
execute if entity @s[scores={mech_timer=1}] run playsound mechanization:base.battery_ambient ambient @a[distance=..16] ~ ~ ~ 0.05
scoreboard players add @s mech_timer 1
scoreboard players set @s[scores={mech_timer=3}] mech_timer 0

#Creative
scoreboard players set @s[tag=mech_storage_creative] mech_power 500000

#Break
execute at @s unless block ~ ~ ~ minecraft:barrier run kill @s