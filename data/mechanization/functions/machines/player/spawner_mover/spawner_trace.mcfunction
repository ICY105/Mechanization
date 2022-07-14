
execute if block ~ ~ ~ minecraft:spawner run function mechanization:machines/player/spawner_mover/spawner_copy
scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 1.. if block ~ ~ ~ #mechanization:air positioned ^ ^ ^0.05 run function mechanization:machines/player/spawner_mover/spawner_trace
