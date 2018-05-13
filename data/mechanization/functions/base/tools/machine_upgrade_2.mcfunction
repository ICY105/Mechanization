scoreboard players set in_0 mech_data 100
function mechanization:base/raytrace/manage_ray_invis

scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data at @s run tag @e[distance=..0.5,scores={mech_power=-10000..},tag=!mech_upgraded,tag=!mech_power_storage] add mech_upgraded

kill @s
