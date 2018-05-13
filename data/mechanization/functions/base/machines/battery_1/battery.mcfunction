
#holds 100000 KJ
#transfers 100 KJ/s
#transfers to 2000 KJ
#range 12 m

#store scoreboard to nbt
execute unless score @s mech_power matches 0.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#energy display
execute store success entity @s[scores={mech_power=..0}] ArmorItems[3].tag.Damage int 1 if entity @s
execute store success entity @s[scores={mech_power=1..14285}] ArmorItems[3].tag.Damage int 2 if entity @s
execute store success entity @s[scores={mech_power=14285..28571}] ArmorItems[3].tag.Damage int 3 if entity @s
execute store success entity @s[scores={mech_power=28571..42857}] ArmorItems[3].tag.Damage int 4 if entity @s
execute store success entity @s[scores={mech_power=42857..57142}] ArmorItems[3].tag.Damage int 5 if entity @s
execute store success entity @s[scores={mech_power=57142..71428}] ArmorItems[3].tag.Damage int 6 if entity @s
execute store success entity @s[scores={mech_power=71428..85714}] ArmorItems[3].tag.Damage int 7 if entity @s
execute store success entity @s[scores={mech_power=85714..99900}] ArmorItems[3].tag.Damage int 8 if entity @s
execute store success entity @s[scores={mech_power=99900..}] ArmorItems[3].tag.Damage int 9 if entity @s

#energy transfer
scoreboard players operation temp_1 mech_data = @s mech_gridid

scoreboard players set temp_0 mech_data 0
execute if entity @s[scores={mech_power=..99900}] as @e[scores={mech_power=100..},distance=..12,tag=mech_transmitter] if score @s mech_gridid = temp_1 mech_data run tag @s add mech_posstrans
execute if entity @s[scores={mech_power=..99900}] as @e[limit=1,sort=nearest,tag=mech_posstrans] at @s run function mechanization:base/machines/battery_1/transmit_effect
execute if score temp_0 mech_data matches 1 run scoreboard players add @s mech_power 100
tag @e[tag=mech_posstrans] remove mech_posstrans

scoreboard players set temp_0 mech_data 0
execute if entity @s[scores={mech_power=100..}] as @e[scores={mech_power=..1900},distance=..12,tag=mech_reciever] if score @s mech_gridid = temp_1 mech_data run tag @s add mech_posstrans
execute if entity @s[scores={mech_power=100..}] as @e[limit=1,sort=nearest,tag=mech_posstrans] at @s run function mechanization:base/machines/battery_1/recieve_effect
execute if score temp_0 mech_data matches 1 run scoreboard players remove @s mech_power 100
tag @e[tag=mech_posstrans] remove mech_posstrans

#store power to nbt
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#Ambient Sounds
execute if entity @s[scores={mech_timer=1}] run playsound mechanization:base.battery_ambient block @a[distance=..16] ~ ~ ~ 0.05
scoreboard players add @s mech_timer 1
scoreboard players set @s[scores={mech_timer=3}] mech_timer 0

#Break
execute at @s unless block ~ ~ ~ minecraft:barrier run kill @s
