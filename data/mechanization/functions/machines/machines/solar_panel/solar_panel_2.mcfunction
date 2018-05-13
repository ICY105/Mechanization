
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
execute store result entity @s Pose.Head[0] float 0.0075 run scoreboard players get temp_0 mech_data
execute if block ~ ~ ~ daylight_detector[inverted=false] store success entity @s ArmorItems[3].tag.Damage short 41 if entity @s
execute if block ~ ~ ~ daylight_detector[inverted=true] store success entity @s ArmorItems[3].tag.Damage short 42 if entity @s
execute unless block ~ ~ ~ daylight_detector run kill @s

execute if entity @s[tag=!mech_upgraded,scores={mech_power=..2000}] run function mechanization:machines/machines/solar_panel/solar_panel_normal
execute if entity @s[tag=mech_upgraded,scores={mech_power=..2000}] run function mechanization:machines/machines/solar_panel/solar_panel_upgraded

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ daylight_detector run function give:mech_machines/machine_frame_tier_2
execute unless block ~ ~ ~ daylight_detector run kill @e[tag=mech_solar_panel_model,distance=..0.5]
execute unless block ~ ~ ~ daylight_detector run kill @s
