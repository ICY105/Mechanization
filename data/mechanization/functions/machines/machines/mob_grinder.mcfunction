
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
scoreboard players set temp_0 mech_data 0

execute if entity @s[tag=!mech_upgraded,scores={mech_power=160..}] store result score temp_0 mech_data run kill @e[distance=..5,nbt={DeathTime:0s},type=!player,type=!armor_stand,type=!wither,type=!ender_dragon,type=!villager]
execute if entity @s[tag=mech_upgraded,scores={mech_power=160..}] store result score temp_0 mech_data run kill @e[distance=..9,nbt={DeathTime:0s},type=!player,type=!armor_stand,type=!wither,type=!ender_dragon,type=!villager]

execute if score temp_0 mech_data matches 1.. run particle flame ~ ~ ~ 2 0 2 0 100
execute if score temp_0 mech_data matches 1.. run scoreboard players remove @s mech_power 160

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute at @s unless block ~ ~ ~ barrier run kill @s
