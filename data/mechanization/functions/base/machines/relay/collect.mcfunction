#transfers 600 KJ/s
#transfers to 6000 KJ
#range 48 m

#collection
scoreboard players operation temp_1 mech_data = @s mech_gridid

scoreboard players set temp_0 mech_data 0
execute if entity @s[scores={mech_power=..5400}] as @e[scores={mech_power=600..},distance=1..48,tag=mech_transmitter,tag=!mech_energy_relay] if score @s mech_gridid = temp_1 mech_data run tag @s add mech_posstrans
execute if entity @s[scores={mech_power=..5400}] as @e[limit=1,sort=nearest,tag=mech_posstrans] at @s run function mechanization:base/machines/relay/collect_effect
execute if score temp_0 mech_data matches 1 run scoreboard players add @s mech_power 600
tag @e[tag=mech_posstrans] remove mech_posstrans