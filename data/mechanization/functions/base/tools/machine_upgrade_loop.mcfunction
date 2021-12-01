execute unless block ~ ~ ~ #mechanization:raytrace_tools align xyz positioned ~0.5 ~0.5 ~0.5 run function mechanization:base/tools/machine_upgrade_run
execute if entity @e[distance=..0.5,scores={mech_power=0..}] align xyz positioned ~0.5 ~0.5 ~0.5 run function mechanization:base/tools/machine_upgrade_run

scoreboard players remove in_0 mechanization.data 1
execute if block ~ ~ ~ #mechanization:raytrace_tools if score in_0 mechanization.data matches 1.. positioned ^ ^ ^0.05 run function mechanization:base/tools/machine_upgrade_loop
