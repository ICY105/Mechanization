
#transfers 600 KJ/s
#transfers to 6000 KJ
#range 48 m

#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid
execute unless score @s mech_data matches -2147483648.. store result score @s mech_data run data get entity @s ArmorItems[3].tag.mech_data

#main
execute if entity @s[scores={mech_data=0}] run function mechanization:base/machines/relay/transmit
execute if entity @s[scores={mech_data=1}] run function mechanization:base/machines/relay/collect
execute if entity @s[scores={mech_data=2}] unless entity @s[scores={mech_gridid=0}] run function mechanization:base/machines/relay/import
execute if entity @s[scores={mech_data=3}] unless entity @s[scores={mech_gridid=0}] run function mechanization:base/machines/relay/export

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s ArmorItems[3].tag.mech_data int 1 run scoreboard players get @s mech_data

#Break
execute at @s unless block ~ ~ ~ minecraft:barrier run kill @s
