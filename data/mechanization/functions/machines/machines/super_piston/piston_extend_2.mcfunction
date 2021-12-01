
scoreboard players set in_1 mechanization.data 12
execute unless block ~ ~ ~ #du:air align xyz run function mechanization:machines/machines/super_piston/piston_extend_3

execute if score in_0 mechanization.data matches 1 if score @s mechanization.data matches 0 if block ~ ~ ~ #du:air run setblock ~ ~ ~ piston_head[facing=west]
execute if score in_0 mechanization.data matches 1 if score @s mechanization.data matches 1 if block ~ ~ ~ #du:air run setblock ~ ~ ~ piston_head[facing=south]
execute if score in_0 mechanization.data matches 1 if score @s mechanization.data matches 2 if block ~ ~ ~ #du:air run setblock ~ ~ ~ piston_head[facing=east]
execute if score in_0 mechanization.data matches 1 if score @s mechanization.data matches 3 if block ~ ~ ~ #du:air run setblock ~ ~ ~ piston_head[facing=north]
execute if score in_0 mechanization.data matches 1 if score @s mechanization.data matches 4 if block ~ ~ ~ #du:air run setblock ~ ~ ~ piston_head[facing=up]
execute if score in_0 mechanization.data matches 1 if score @s mechanization.data matches 5 if block ~ ~ ~ #du:air run setblock ~ ~ ~ piston_head[facing=down]
