#Machine Ticks
execute if score timer_20 du_data matches 6 as @e[tag=mech_control_rod] at @s run function mechanization:nuclear/machines/control_rod

execute if score timer_100 du_data matches 15 as @e[tag=mech_centrifuge] at @s run function mechanization:nuclear/machines/centrifuge/centrifuge
execute as @e[tag=mech_centrifuge,tag=mech_active] at @s run tp @s ~ ~ ~ ~5 ~

execute if score timer_100 du_data matches 25 as @e[tag=mech_turbine] at @s run function mechanization:nuclear/machines/steam_turbine
execute if score timer_100 du_data matches 25 as @e[tag=mech_fission_reactor] at @s run function mechanization:nuclear/machines/fission_reactor/reactor
execute as @e[tag=mech_turbine,tag=mech_active] at @s run tp @s ~ ~ ~ ~25 ~

execute if score timer_100 du_data matches 35 as @e[tag=mech_temp_observer] at @s run function mechanization:nuclear/machines/temp_observer
execute if score timer_100 du_data matches 35 as @e[tag=mech_rate_observer] at @s run function mechanization:nuclear/machines/rate_observer
