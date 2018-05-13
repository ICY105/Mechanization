
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid
execute unless score @s mech_data matches -2147483648.. store result score @s mech_data run data get entity @s ArmorItems[3].tag.mech_data

#main
execute if entity @s[scores={mech_data=10..,mech_power=320..}] store result score temp_0 mech_data run data get entity @s Pos[1] 10

execute if entity @s[scores={mech_data=10..,mech_power=320..}] store result entity @s Pos[1] double 0.1 run scoreboard players get @s mech_data
execute if entity @s[scores={mech_data=10..,mech_power=320..},tag=!mech_upgraded] at @s run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:air replace #mechanization:quarry
execute if entity @s[scores={mech_data=10..,mech_power=320..},tag=mech_upgraded] at @s run fill ~-7 ~ ~-7 ~7 ~ ~7 minecraft:air replace #mechanization:quarry
execute if entity @s[scores={mech_data=10..,mech_power=320..}] store result entity @s Pos[1] double 0.1 run scoreboard players get temp_0 mech_data

execute if entity @s[scores={mech_data=10..,mech_power=320..}] run scoreboard players remove @s mech_power 320
execute if entity @s[scores={mech_data=10..,mech_power=320..}] run scoreboard players remove @s mech_data 10

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s ArmorItems[3].tag.mech_data int 1 run scoreboard players get @s mech_data

#cleanup
execute at @s unless block ~ ~ ~ barrier run kill @s
