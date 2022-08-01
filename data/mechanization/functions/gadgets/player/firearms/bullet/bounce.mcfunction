
execute positioned ^ ^ ^-0.5 unless block ~0.5 ~ ~ #mechanization:raytrace_bullets run scoreboard players set #angle mechanization.data 1
execute positioned ^ ^ ^-0.5 unless block ~ ~ ~0.5 #mechanization:raytrace_bullets run scoreboard players set #angle mechanization.data 2
execute positioned ^ ^ ^-0.5 unless block ~-0.5 ~ ~ #mechanization:raytrace_bullets run scoreboard players set #angle mechanization.data 3
execute positioned ^ ^ ^-0.5 unless block ~ ~ ~-0.5 #mechanization:raytrace_bullets run scoreboard players set #angle mechanization.data 4

execute positioned ^ ^ ^-0.5 unless block ~ ~0.5 ~ #mechanization:raytrace_bullets run scoreboard players set #angle mechanization.data 5
execute positioned ^ ^ ^-0.5 unless block ~ ~-0.5 ~ #mechanization:raytrace_bullets run scoreboard players set #angle mechanization.data 6

execute if score #angle mechanization.data matches 1..4 run function mechanization:gadgets/player/firearms/bullet/bounce_x
execute if score #angle mechanization.data matches 5..6 run function mechanization:gadgets/player/firearms/bullet/bounce_y

execute if score #gadgets.cf.plasma_smelt mechanization.data matches 0 run function mechanization:gadgets/player/firearms/bullet/smelt_block
