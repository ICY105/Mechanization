
execute unless block ~ ~ ~ #mechanization:air positioned ^ ^ ^-0.05 if block ~ ~ ~ #mechanization:air run function mechanization:machines/tools/spawner_mover/spawner_place_copy

scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 1.. if block ~ ~ ~ #du:air positioned ^ ^ ^0.05 run function mechanization:machines/tools/spawner_mover/spawner_place_trace
