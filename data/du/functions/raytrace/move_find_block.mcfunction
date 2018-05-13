tp @s ^ ^ ^0.05
scoreboard players remove in_0 du_data 1
execute at @s if score in_0 du_data matches 0.. unless block ~ ~ ~ #du:air run function du:raytrace/move_find_block