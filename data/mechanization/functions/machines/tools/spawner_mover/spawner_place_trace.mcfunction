execute unless block ~ ~ ~ #du:air positioned ^ ^ ^-0.05 if block ~ ~ ~ #du:air run function mechanization:machines/tools/spawner_mover/spawner_place_copy
scoreboard players remove in_0 mechanization.data 1
execute if score in_0 mechanization.data matches 1.. if block ~ ~ ~ #du:air positioned ^ ^ ^0.05 run function mechanization:machines/tools/spawner_mover/spawner_place_trace
