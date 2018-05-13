
#main
execute store result score temp_0 mech_data run time query daytime
execute if score temp_0 mech_data matches 12000.. run scoreboard players remove temp_0 mech_data 12000
scoreboard players remove temp_0 mech_data 6000

execute as @e[tag=mech_solar_panel] at @s run function mechanization:machines/machines/solar_panel/solar_panel_2
