execute positioned ^ ^ ^-0.5 unless block ~0.5 ~ ~ #mechanization:raytrace_bullets run scoreboard players set in_0 mech_data 1
execute positioned ^ ^ ^-0.5 unless block ~ ~ ~0.5 #mechanization:raytrace_bullets run scoreboard players set in_0 mech_data 2
execute positioned ^ ^ ^-0.5 unless block ~-0.5 ~ ~ #mechanization:raytrace_bullets run scoreboard players set in_0 mech_data 3
execute positioned ^ ^ ^-0.5 unless block ~ ~ ~-0.5 #mechanization:raytrace_bullets run scoreboard players set in_0 mech_data 4

execute positioned ^ ^ ^-0.5 unless block ~ ~0.5 ~ #mechanization:raytrace_bullets run scoreboard players set in_0 mech_data 5
execute positioned ^ ^ ^-0.5 unless block ~ ~-0.5 ~ #mechanization:raytrace_bullets run scoreboard players set in_0 mech_data 6

execute if score in_0 mech_data matches 1..4 run function mechanization:gadgets/guns/bullet/bounce_x
execute if score in_0 mech_data matches 5..6 run function mechanization:gadgets/guns/bullet/bounce_y
