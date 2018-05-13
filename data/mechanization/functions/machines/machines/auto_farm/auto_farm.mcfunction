
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
execute if entity @s[tag=!mech_upgraded,scores={mech_power=240..}] run function mechanization:machines/machines/auto_farm/auto_farm_normal
execute if entity @s[tag=mech_upgraded,scores={mech_power=240..}] run function mechanization:machines/machines/auto_farm/auto_farm_upgraded

execute if entity @s[scores={mech_power=240..}] run scoreboard players remove @s mech_power 240

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute at @s unless block ~ ~ ~ barrier run kill @s
