
execute unless block ~ ~ ~ #mechanization:raytrace_tools as @e[tag=fluid.tank,distance=..0.65,sort=nearest,limit=1] run function mechanization:base/player/pipe_wrench/locate_run

scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 1.. if block ~ ~ ~ #mechanization:raytrace_tools positioned ^ ^ ^0.1 run function mechanization:base/player/pipe_wrench/locate_loop
