
scoreboard players set $base.in_0 mech_data 120
playsound mechanization:base.wrench_break player @a ~ ~ ~
execute anchored eyes positioned ^ ^ ^ run function mechanization:base/tools/wrench_loop
