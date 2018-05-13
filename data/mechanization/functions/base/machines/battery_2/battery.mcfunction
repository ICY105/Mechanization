
#holds 100000 KJ
#transfers 100 KJ/s
#transfers to 2000 KJ
#range 12 m

#store scoreboard to nbt
execute unless score @s mech_power matches 0.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#energy display
execute store success entity @s[scores={mech_power=..0}] ArmorItems[3].tag.Damage int 10 if entity @s
execute store success entity @s[scores={mech_power=1..50000}] ArmorItems[3].tag.Damage int 11 if entity @s
execute store success entity @s[scores={mech_power=50000..100000}] ArmorItems[3].tag.Damage int 12 if entity @s
execute store success entity @s[scores={mech_power=100000..150000}] ArmorItems[3].tag.Damage int 13 if entity @s
execute store success entity @s[scores={mech_power=150000..200000}] ArmorItems[3].tag.Damage int 14 if entity @s
execute store success entity @s[scores={mech_power=200000..250000}] ArmorItems[3].tag.Damage int 15 if entity @s
execute store success entity @s[scores={mech_power=250000..300000}] ArmorItems[3].tag.Damage int 16 if entity @s
execute store success entity @s[scores={mech_power=300000..349600}] ArmorItems[3].tag.Damage int 17 if entity @s
execute store success entity @s[scores={mech_power=349600..}] ArmorItems[3].Damage int 18 if entity @s

#energy transfer
scoreboard players operation temp_1 mech_data = @s mech_gridid

scoreboard players set temp_0 mech_data 0
execute if entity @s[scores={mech_power=..349600}] as @e[scores={mech_power=400..},distance=..16,tag=mech_transmitter] if score @s mech_gridid = temp_1 mech_data run tag @s add mech_posstrans
execute if entity @s[scores={mech_power=..349600}] as @e[limit=1,sort=nearest,tag=mech_posstrans] at @s run function mechanization:base/machines/battery_2/transmit_effect
execute if score temp_0 mech_data matches 1 run scoreboard players add @s mech_power 400
tag @e[tag=mech_posstrans] remove mech_posstrans

scoreboard players set temp_0 mech_data 0
execute if entity @s[scores={mech_power=400..}] as @e[scores={mech_power=..3600},distance=..16,tag=mech_reciever] if score @s mech_gridid = temp_1 mech_data run tag @s add mech_posstrans
execute if entity @s[scores={mech_power=400..}] as @e[limit=1,sort=nearest,tag=mech_posstrans] at @s run function mechanization:base/machines/battery_2/recieve_effect
execute if score temp_0 mech_data matches 1 run scoreboard players remove @s mech_power 400
tag @e[tag=mech_posstrans] remove mech_posstrans

#store power to nbt
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#Ambient Sounds
execute if entity @s[scores={mech_timer=1}] run playsound mechanization:base.battery_ambient ambient @a[distance=..16] ~ ~ ~ 0.05
scoreboard players add @s mech_timer 1
scoreboard players set @s[scores={mech_timer=3}] mech_timer 0

#Break
execute at @s unless block ~ ~ ~ minecraft:barrier run kill @s