
execute align xyz unless block ~ ~ ~ #mechanization:raytrace_tools run function mechanization:base/player/gps/run
execute align xyz if block ~ ~ ~ #mechanization:raytrace_tools if entity @e[type=#mechanization:valid_block_entities,dx=0,dy=0,dz=0] run function mechanization:base/player/gps/run

scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 1.. positioned ^ ^ ^0.05 run function mechanization:base/player/gps/loop
