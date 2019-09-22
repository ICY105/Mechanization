execute if entity @s[tag=!du_sneaking] unless block ~ ~ ~ #du:air align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.5] at @s run function #mechanization:wrench_function
execute if entity @s[tag=du_sneaking] unless block ~ ~ ~ #du:air align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.5] at @s run function mechanization:base/tools/wrench_break
execute if entity @s[tag=!du_sneaking] unless block ~ ~ ~ #du:air run function mechanization:base/tools/wrench_rotate_block
scoreboard players set in_0 mech_data 0