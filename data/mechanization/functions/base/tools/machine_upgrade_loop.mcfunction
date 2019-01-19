execute unless block ~ ~ ~ #du:air align xyz positioned ~0.5 ~0.5 ~0.5 run function mechanization:base/tools/machine_upgrade_run
scoreboard players remove in_0 mech_data 1
execute if block ~ ~ ~ #du:air if score in_0 mech_data matches 1.. positioned ^ ^ ^0.05 run function mechanization:base/tools/machine_upgrade_loop