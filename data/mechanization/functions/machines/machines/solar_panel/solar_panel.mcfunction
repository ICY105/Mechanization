
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
execute store result score $temp_0 mech_data run time query daytime
execute if score $temp_0 mech_data matches 12000.. run scoreboard players remove $temp_0 mech_data 12000
scoreboard players remove $temp_0 mech_data 6000

execute store result entity @s Pose.Head[0] float 0.0075 run scoreboard players get $temp_0 mech_data
execute if block ~ ~ ~ minecraft:daylight_detector[inverted=false] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6422909
execute if block ~ ~ ~ minecraft:daylight_detector[inverted=true] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6422910
execute unless block ~ ~ ~ minecraft:daylight_detector run kill @s

execute if entity @s[tag=!mech_upgraded,scores={mech_power=..2000}] run function mechanization:machines/machines/solar_panel/normal
execute if entity @s[tag=mech_upgraded,tag=!mech_upgrade_ender,tag=!mech_upgrade_nether,scores={mech_power=..2000}] run function mechanization:machines/machines/solar_panel/upgraded
execute if entity @s[tag=mech_upgrade_ender,scores={mech_power=..2000}] run function mechanization:machines/machines/solar_panel/ender
execute if entity @s[tag=mech_upgrade_nether,scores={mech_power=..2000}] run function mechanization:machines/machines/solar_panel/nether

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:daylight_detector run function mechanization:base/utils/break_machine_t2
execute unless block ~ ~ ~ minecraft:daylight_detector positioned ~ ~0.4 ~ run kill @e[tag=mech_solar_panel_model,distance=..0.5]
