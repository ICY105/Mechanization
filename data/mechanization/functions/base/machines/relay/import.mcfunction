#transfers 600 KJ/s
#transfers to 6000 KJ
#range 48 m

#collection
scoreboard players set $temp_0 mech_data 0
execute if entity @s[scores={mech_power=..5400}] as @e[type=minecraft:item_frame,scores={mech_power=600..},distance=1..16,tag=mech_power_storage,tag=!mech_battery_qu] run tag @s[scores={mech_gridid=0}] add mech_posstrans
execute if entity @s[scores={mech_power=..5400}] as @e[type=minecraft:item_frame,limit=1,sort=nearest,tag=mech_posstrans] at @s run function mechanization:base/machines/relay/collect_effect
execute if score $temp_0 mech_data matches 1 run scoreboard players add @s mech_power 600
tag @e[tag=mech_posstrans] remove mech_posstrans