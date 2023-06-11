
execute unless score @s mechanization.item_id matches -2147483648.. align xyz positioned ~0.5 ~ ~0.5 run scoreboard players operation @s mechanization.item_id = @e[tag=mechanization.item_pipe,sort=nearest,limit=1,distance=..0.1] mechanization.item_id
execute unless block ~ ~ ~ minecraft:moving_piston run function mechanization:assembly/blocks/item_inserter/break
