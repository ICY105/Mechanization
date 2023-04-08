
scoreboard players operation @s fluid.network_id = #pipe.network_id fluid.data

execute align xyz positioned ~ ~01 ~ as @e[tag=fluid.pipe,predicate=fluid:v1.0/equals_network_id,dx=0,dy=0,dz=0] at @s run function fluid:v1.0/pipe/break_pipe_2
execute align xyz positioned ~ ~-1 ~ as @e[tag=fluid.pipe,predicate=fluid:v1.0/equals_network_id,dx=0,dy=0,dz=0] at @s run function fluid:v1.0/pipe/break_pipe_2
execute align xyz positioned ~ ~ ~-1 as @e[tag=fluid.pipe,predicate=fluid:v1.0/equals_network_id,dx=0,dy=0,dz=0] at @s run function fluid:v1.0/pipe/break_pipe_2
execute align xyz positioned ~ ~ ~01 as @e[tag=fluid.pipe,predicate=fluid:v1.0/equals_network_id,dx=0,dy=0,dz=0] at @s run function fluid:v1.0/pipe/break_pipe_2
execute align xyz positioned ~01 ~ ~ as @e[tag=fluid.pipe,predicate=fluid:v1.0/equals_network_id,dx=0,dy=0,dz=0] at @s run function fluid:v1.0/pipe/break_pipe_2
execute align xyz positioned ~-1 ~ ~ as @e[tag=fluid.pipe,predicate=fluid:v1.0/equals_network_id,dx=0,dy=0,dz=0] at @s run function fluid:v1.0/pipe/break_pipe_2
