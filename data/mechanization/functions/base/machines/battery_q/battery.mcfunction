#holds 500000 KJ
#transfers 1000 KJ/s
#transfers to 8000 KJ
#range 16 m

scoreboard players operation temp_1 mech_data = @s mech_gridid

scoreboard players set temp_0 mech_data 0
execute as @e[tag=mech_quantum_network] if score @s mech_gridid = temp_1 mech_data run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 0 run function mechanization:base/machines/battery_q/new_network

execute as @e[tag=mech_quantum_network] if score @s mech_gridid = temp_1 mech_data run scoreboard players operation temp_0 mech_data = @s mech_power
scoreboard players operation @s mech_power = temp_0 mech_data

#energy display
execute store success entity @s[scores={mech_power=..0}] ArmorItems[3].tag.Damage int 28 if entity @s
execute store success entity @s[scores={mech_power=1..71428}] ArmorItems[3].tag.Damage int 29 if entity @s
execute store success entity @s[scores={mech_power=71428..142857}] ArmorItems[3].tag.Damage int 30 if entity @s
execute store success entity @s[scores={mech_power=142857..214285}] ArmorItems[3].tag.Damage int 31 if entity @s
execute store success entity @s[scores={mech_power=214285..285714}] ArmorItems[3].tag.Damage int 32 if entity @s
execute store success entity @s[scores={mech_power=285714..357142}] ArmorItems[3].tag.Damage int 33 if entity @s
execute store success entity @s[scores={mech_power=357142..428571}] ArmorItems[3].tag.Damage int 34 if entity @s
execute store success entity @s[scores={mech_power=428571..499000}] ArmorItems[3].tag.Damage int 35 if entity @s
execute store success entity @s[scores={mech_power=499000..}] ArmorItems[3].tag.Damage int 36 if entity @s

#energy transfer
scoreboard players set temp_0 mech_data 0
execute if entity @s[scores={mech_power=..499000}] as @e[scores={mech_power=1000..},distance=..16,tag=mech_transmitter] if score @s mech_gridid = temp_1 mech_data run tag @s add mech_posstrans
execute if entity @s[scores={mech_power=..499000}] as @e[limit=1,sort=nearest,tag=mech_posstrans] at @s run function mechanization:base/machines/battery_q/transmit_effect
execute if score temp_0 mech_data matches 1 run scoreboard players add @s mech_power 1000
tag @e[tag=mech_posstrans] remove mech_posstrans

scoreboard players set temp_0 mech_data 0
execute if entity @s[scores={mech_power=1000..}] as @e[scores={mech_power=..5000},distance=..16,tag=mech_reciever] if score @s mech_gridid = temp_1 mech_data run tag @s add mech_posstrans
execute if entity @s[scores={mech_power=1000..}] as @e[limit=1,sort=nearest,tag=mech_posstrans] at @s run function mechanization:base/machines/battery_q/recieve_effect
execute if score temp_0 mech_data matches 1 run scoreboard players remove @s mech_power 1000
tag @e[tag=mech_posstrans] remove mech_posstrans

#Ambient Sounds
execute if entity @s[scores={mech_timer=1}] run playsound mechanization:base.quantum_battery_ambient ambient @a[distance=..16] ~ ~ ~ 0.05
scoreboard players add @s mech_timer 1
scoreboard players set @s[scores={mech_timer=10}] mech_timer 0

#Cleanup
scoreboard players operation temp_0 mech_data = @s mech_power
execute as @e[tag=mech_quantum_network] if score @s mech_gridid = temp_1 mech_data run scoreboard players operation @s mech_power = temp_0 mech_data

#Break
execute at @s unless block ~ ~ ~ minecraft:barrier run kill @s
