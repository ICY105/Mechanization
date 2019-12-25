execute unless predicate du:entity/is_sneaking as @e[distance=..0.5] at @s run function #mechanization:wrench_function
execute if predicate du:entity/is_sneaking as @e[distance=..0.5] at @s run function mechanization:base/tools/wrench_break
execute unless predicate du:entity/is_sneaking unless block ~ ~ ~ #du:air run function mechanization:base/tools/wrench_rotate_block
scoreboard players set in_0 mech_data 0