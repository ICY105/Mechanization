execute if block ~ ~ ~ spawner run function mechanization:machines/tools/spawner_mover/spawner_copy
scoreboard players remove in_0 mechanization.data 1
execute if score in_0 mechanization.data matches 1.. if block ~ ~ ~ #du:air positioned ^ ^ ^0.05 run function mechanization:machines/tools/spawner_mover/spawner_trace
